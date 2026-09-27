.class public Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;
.super Ljava/lang/Object;
.source "PermissionExplanationDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showAppListPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 2

    .line 60
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u9700\u8981\u5e94\u7528\u5217\u8868\u6743\u9650"

    .line 61
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6b64\u5e94\u7528\u9700\u8981\u8bfb\u53d6\u5e94\u7528\u5217\u8868\u6743\u9650\u6765\u4e3a\u60a8\u63d0\u4f9b\u4e2a\u6027\u5316\u7684\u5e7f\u544a\u670d\u52a1\u548c\u9632\u6b62\u6076\u610f\u884c\u4e3a\u3002\u8bf7\u5728\u7cfb\u7edf\u8bbe\u7f6e\u4e2d\u624b\u52a8\u5f00\u542f\u6b64\u6743\u9650\u3002\n\n\u64cd\u4f5c\u6b65\u9aa4\uff1a\u5e94\u7528\u4fe1\u606f \u2192 \u6743\u9650 \u2192 \u67e5\u770b\u6240\u6709\u5e94\u7528 \u2192 \u5f00\u542f"

    .line 62
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;

    invoke-direct {v1, p0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$4;-><init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 63
    const-string p0, "\u53bb\u8bbe\u7f6e"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$3;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$3;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 86
    const-string p1, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 94
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showAudioPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 2

    .line 156
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u9700\u8981\u9ea6\u514b\u98ce\u6743\u9650"

    .line 157
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u6b64\u5e94\u7528\u9700\u8981\u9ea6\u514b\u98ce\u6743\u9650\u6765\u4e3a\u60a8\u7684\u89c6\u9891\u5f55\u5236\u97f3\u9891\u3002\u6ca1\u6709\u6b64\u6743\u9650\uff0c\u5f55\u5236\u7684\u89c6\u9891\u5c06\u6ca1\u6709\u58f0\u97f3\u3002"

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$10;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$10;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 159
    const-string v1, "\u6388\u4e88\u6743\u9650"

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$9;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$9;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 167
    const-string p1, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 175
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 176
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showCameraPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 2

    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u9700\u8981\u76f8\u673a\u6743\u9650"

    .line 130
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u6b64\u5e94\u7528\u9700\u8981\u76f8\u673a\u6743\u9650\u6765\u62cd\u6444\u7167\u7247\u548c\u5f55\u5236\u89c6\u9891\u3002\u6ca1\u6709\u6b64\u6743\u9650\uff0c\u76f8\u673a\u529f\u80fd\u5c06\u65e0\u6cd5\u6b63\u5e38\u5de5\u4f5c\u3002"

    .line 131
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$8;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$8;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 132
    const-string v1, "\u6388\u4e88\u6743\u9650"

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$7;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$7;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 140
    const-string p1, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 148
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showLocationPermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 2

    .line 102
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u9700\u8981\u5b9a\u4f4d\u6743\u9650"

    .line 103
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u6b64\u5e94\u7528\u9700\u8981\u5b9a\u4f4d\u6743\u9650\u6765\u63d0\u4f9b\u57fa\u4e8e\u4f4d\u7f6e\u7684\u670d\u52a1\u548cGPS\u529f\u80fd\u3002\u8fd9\u6709\u52a9\u4e8e\u60a8\u8bb0\u5f55\u7167\u7247\u548c\u89c6\u9891\u7684\u62cd\u6444\u4f4d\u7f6e\u3002"

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$6;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$6;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 105
    const-string v1, "\u6388\u4e88\u6743\u9650"

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$5;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$5;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 113
    const-string p1, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 121
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showPermissionSettingsDialog(Landroid/content/Context;)V
    .locals 2

    .line 183
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u6743\u9650\u8bbe\u7f6e"

    .line 184
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u6743\u9650\u5df2\u88ab\u62d2\u7edd\u3002\u8bf7\u5728\u8bbe\u7f6e\u4e2d\u542f\u7528\u6240\u9700\u6743\u9650\u4ee5\u4f7f\u7528\u6b64\u529f\u80fd\u3002"

    .line 185
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$11;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$11;-><init>(Landroid/content/Context;)V

    .line 186
    const-string p0, "\u524d\u5f80\u8bbe\u7f6e"

    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u53d6\u6d88"

    const/4 v1, 0x0

    .line 196
    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 197
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static showStoragePermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V
    .locals 2

    .line 33
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string p0, "\u9700\u8981\u5b58\u50a8\u6743\u9650"

    .line 34
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "\u6b64\u5e94\u7528\u9700\u8981\u5b58\u50a8\u6743\u9650\u6765\u4fdd\u5b58\u60a8\u62cd\u6444\u7684\u7167\u7247\u548c\u89c6\u9891\u3002\u6ca1\u6709\u6b64\u6743\u9650\uff0c\u60a8\u5c06\u65e0\u6cd5\u4fdd\u5b58\u5185\u5bb9\u3002"

    .line 35
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$2;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$2;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 36
    const-string v1, "\u6388\u4e88\u6743\u9650"

    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    new-instance v0, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$1;

    invoke-direct {v0, p1}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$1;-><init>(Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    .line 44
    const-string p1, "\u53d6\u6d88"

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
