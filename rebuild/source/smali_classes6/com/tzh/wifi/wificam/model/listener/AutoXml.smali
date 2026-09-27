.class public Lcom/tzh/wifi/wificam/model/listener/AutoXml;
.super Ljava/lang/Object;
.source "AutoXml.java"


# static fields
.field private static final HTemplate:Ljava/lang/String; = "<dimen name=\"y{0}\">{1}px</dimen>\n"

.field private static final WTemplate:Ljava/lang/String; = "<dimen name=\"x{0}\">{1}px</dimen>\n"

.field private static mInstance:Lcom/tzh/wifi/wificam/model/listener/AutoXml;


# instance fields
.field private baseH:I

.field private baseW:I

.field private lay_x:Ljava/io/File;

.field private lay_y:Ljava/io/File;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_x:Ljava/io/File;

    .line 18
    iput-object v0, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_y:Ljava/io/File;

    const/16 v0, 0x500

    .line 19
    iput v0, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseW:I

    const/16 v0, 0x2d0

    .line 20
    iput v0, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseH:I

    .line 27
    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/model/listener/AutoXml;
    .locals 1

    .line 31
    sget-object v0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mInstance:Lcom/tzh/wifi/wificam/model/listener/AutoXml;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mInstance:Lcom/tzh/wifi/wificam/model/listener/AutoXml;

    .line 34
    :cond_0
    sget-object p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mInstance:Lcom/tzh/wifi/wificam/model/listener/AutoXml;

    return-object p0
.end method


# virtual methods
.method public FileWriteBuffer(Ljava/io/File;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 131
    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method public change(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method public createFolder(II)V
    .locals 5

    .line 55
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "AutoXml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "create folder of WiFi_CAM"

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 61
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    const-string p1, "values-%dx%d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .line 64
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mContext:Landroid/content/Context;

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 65
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 68
    :cond_1
    new-instance p1, Ljava/io/File;

    const-string v0, "lay_x.xml"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_x:Ljava/io/File;

    .line 69
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2

    .line 71
    :try_start_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_x:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 76
    :cond_2
    :goto_0
    new-instance p1, Ljava/io/File;

    const-string v0, "lay_y.xml"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_y:Ljava/io/File;

    .line 77
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    .line 79
    :try_start_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_y:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 84
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->mContext:Landroid/content/Context;

    const-string p2, "create folder or file success!\n"

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public generalXml(II)V
    .locals 0

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->createFolder(II)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->putXmlContent(II)V

    return-void
.end method

.method public putXmlContent(II)V
    .locals 13

    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    const-string v1, "<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<resources>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-float v2, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v2, v2, v3

    .line 102
    iget v4, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseW:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "width : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseW:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AutoXml"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    const/4 v7, 0x1

    .line 105
    :goto_0
    iget v8, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseW:I

    const-string v9, "<dimen name=\"x{0}\">{1}px</dimen>\n"

    const-string v10, "{1}"

    const-string v11, "{0}"

    const-string v12, ""

    if-ge v7, v8, :cond_0

    .line 106
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v11, v7

    mul-float v11, v11, v2

    .line 107
    invoke-virtual {p0, v11}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->change(F)F

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 106
    invoke-virtual {v8, v10, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 109
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseW:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v10, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const-string p1, "</resources>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    iget-object v2, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_x:Ljava/io/File;

    invoke-virtual {p0, v2, v0}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->FileWriteBuffer(Ljava/io/File;Ljava/lang/StringBuffer;)V

    .line 114
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    int-to-float v1, p2

    mul-float v1, v1, v3

    .line 117
    iget v2, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseH:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "height : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseH:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_1
    iget v2, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseH:I

    const-string v3, "<dimen name=\"y{0}\">{1}px</dimen>\n"

    if-ge v4, v2, :cond_1

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v11, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v5, v4

    mul-float v5, v5, v1

    .line 121
    invoke-virtual {p0, v5}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->change(F)F

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-virtual {v2, v10, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 123
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->baseH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v10, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    iget-object p1, p0, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->lay_y:Ljava/io/File;

    invoke-virtual {p0, p1, v0}, Lcom/tzh/wifi/wificam/model/listener/AutoXml;->FileWriteBuffer(Ljava/io/File;Ljava/lang/StringBuffer;)V

    return-void
.end method
