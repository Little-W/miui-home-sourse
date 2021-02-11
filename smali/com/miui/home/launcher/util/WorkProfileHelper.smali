.class public Lcom/miui/home/launcher/util/WorkProfileHelper;
.super Ljava/lang/Object;
.source "WorkProfileHelper.java"


# direct methods
.method static synthetic lambda$showNext$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 46
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWorkProfileTips$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 32
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 33
    invoke-static {p0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showNext(Landroid/content/Context;)V

    return-void
.end method

.method private static showNext(Landroid/content/Context;)V
    .locals 2

    .line 42
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f100280

    .line 43
    invoke-virtual {v0, p0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f10027f

    .line 44
    invoke-virtual {p0, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$Yx0QgB3cFnQPbiBvVb_a-TtQvbw;->INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$Yx0QgB3cFnQPbiBvVb_a-TtQvbw;

    const v1, 0x7f10027d

    .line 45
    invoke-virtual {p0, v1, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 49
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public static showWorkProfileTips(Landroid/content/Context;)V
    .locals 4

    .line 18
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "had_show_work_profile"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 22
    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "had_show_work_profile"

    const/4 v3, 0x1

    .line 26
    invoke-static {v2, v0, v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 28
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v2, 0x8

    invoke-direct {v0, p0, v2}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f100280

    .line 29
    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10027c

    .line 30
    invoke-virtual {v0, v2}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f10027e

    new-instance v3, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$K884uPxWMX7zNHFLqUEbuzdDo48;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$K884uPxWMX7zNHFLqUEbuzdDo48;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-virtual {v0, v2, v3}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 35
    invoke-virtual {p0, v1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    .line 37
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method
