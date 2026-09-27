.class public Lcom/tzh/wifi/wificam/utils/TimeFormater;
.super Ljava/lang/Object;
.source "TimeFormater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;
    }
.end annotation


# static fields
.field public static final yyyyMMdd:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

.field public static final yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatYMD(J)Ljava/lang/String;
    .locals 1

    .line 30
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 38
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMD(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMdd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(J)Ljava/lang/String;
    .locals 1

    .line 42
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 50
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMDHM(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHM(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMddHHmm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(J)Ljava/lang/String;
    .locals 1

    .line 54
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMDHMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD_HMS(J)Ljava/lang/String;
    .locals 1

    .line 62
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatYMD_HMS(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMdd_HHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDateTime(Ljava/lang/String;Ljava/text/SimpleDateFormat;Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    return-object v0

    .line 121
    :cond_1
    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/utils/TimeFormater$DateType;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-object v0

    .line 135
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p2

    invoke-static {p2}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result v0

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/TimeFormater;->getInt2TwoByte(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 133
    :pswitch_1
    invoke-virtual {p0}, Ljava/util/Date;->getSeconds()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :pswitch_2
    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :pswitch_3
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :pswitch_4
    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :pswitch_5
    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 123
    :pswitch_6
    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result p0

    add-int/lit16 p0, p0, 0x76c

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFormatedDateString(I)Ljava/lang/String;
    .locals 3

    const/16 v0, 0xd

    const/4 v1, 0x0

    if-gt p0, v0, :cond_0

    const/16 v0, -0xc

    if-ge p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    :cond_1
    const v0, 0x36ee80

    mul-int p0, p0, v0

    .line 96
    invoke-static {p0}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v0

    .line 97
    array-length v2, v0

    if-nez v2, :cond_2

    .line 98
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p0

    goto :goto_0

    .line 100
    :cond_2
    new-instance v2, Ljava/util/SimpleTimeZone;

    aget-object v0, v0, v1

    invoke-direct {v2, p0, v0}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    move-object p0, v2

    .line 102
    :goto_0
    sget-object v0, Lcom/tzh/wifi/wificam/utils/TimeFormater;->yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 103
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFormatedDateTime(Ljava/text/SimpleDateFormat;J)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getHHMMSSFormatValue(I)Ljava/lang/String;
    .locals 8

    .line 85
    div-int/lit16 p0, p0, 0x3e8

    int-to-long v0, p0

    const-wide/16 v2, 0x3c

    .line 86
    div-long v4, v0, v2

    .line 87
    div-long v6, v4, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    rem-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object v4, v1, p0

    const/4 p0, 0x2

    aput-object v0, v1, p0

    const-string p0, "{0,number,00}:{1,number,00}:{2,number,00}"

    invoke-static {p0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInt2TwoByte(I)Ljava/lang/String;
    .locals 2

    .line 149
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    if-lt p0, v1, :cond_0

    return-object v0

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeFormatValue(I)Ljava/lang/String;
    .locals 6

    .line 74
    div-int/lit8 v0, p0, 0x3c

    .line 75
    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v1, v1, 0x18

    .line 76
    rem-int/lit8 v0, v0, 0x3c

    .line 77
    rem-int/lit8 p0, p0, 0x3c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 79
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object p0, v1, v3

    const-string p0, "{0,number,00}:{1,number,00}"

    invoke-static {p0, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v4

    aput-object v0, v5, v3

    aput-object p0, v5, v2

    const-string p0, "{0,number,00}:{1,number,00}:{2,number,00}"

    invoke-static {p0, v5}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showDurationFormat(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 167
    :cond_0
    div-int/lit16 p0, p0, 0x3e8

    .line 168
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    div-int/lit8 v2, p0, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "%02d : %02d"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static showRecordingTimeFormat(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    .line 160
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    div-int/lit8 v2, p0, 0x3c

    rem-int/lit8 v2, v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    rem-int/lit8 p0, p0, 0x3c

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    const-string p0, "%02d : %02d"

    invoke-static {v1, p0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
