.class public Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "PrivacyPolicyActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private clauseContent:Landroid/widget/TextView;

.field private clauseTitle:Landroid/widget/TextView;

.field private languate:I

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private tvAddDeviceFailedBack:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    .line 19
    const-class v0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;

    invoke-static {v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->tvAddDeviceFailedBack:Landroid/widget/TextView;

    .line 21
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 24
    iput v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->languate:I

    return-void
.end method

.method private widget_init()V
    .locals 1

    const v0, 0x7f0a0ae1

    .line 66
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->tvAddDeviceFailedBack:Landroid/widget/TextView;

    const v0, 0x7f0a022a

    .line 67
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0229

    .line 68
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    .line 70
    iget-object v0, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->tvAddDeviceFailedBack:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 104
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    .line 105
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0ae1

    if-eq p1, v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    .line 80
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getLan(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->languate:I

    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->requestWindowFeature(I)Z

    .line 32
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 38
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const v0, 0x7f0d02b4

    .line 40
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->widget_init()V

    .line 42
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    iget v1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->languate:I

    const-string v2, "Privacy Policy"

    const-string v3, "type"

    if-ne v1, p1, :cond_1

    .line 45
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12033b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120338

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    if-nez v1, :cond_3

    .line 53
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120337

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p1, p0, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->clauseContent:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/view/PrivacyPolicyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 99
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 89
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 94
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    return-void
.end method
