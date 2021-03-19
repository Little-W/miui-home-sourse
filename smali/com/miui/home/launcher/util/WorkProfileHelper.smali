.class public Lcom/miui/home/launcher/util/WorkProfileHelper;
.super Ljava/lang/Object;
.source "WorkProfileHelper.java"


# static fields
.field private static sHadShowTip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsHaveWorkUser:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4

    .line 86
    invoke-static {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/miui/home/library/compat/UserManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/library/compat/UserManagerCompat;->hasWorkUser()Z

    move-result p0

    sput-boolean p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sIsHaveWorkUser:Z

    .line 87
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const-string v0, "had_show_work_profile_drawer"

    const-string v1, "had_show_work_profile_drawer"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const-string v0, "had_show_work_profile_folder"

    const-string v1, "had_show_work_profile_folder"

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object p0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const-string v0, "had_show_work_profile_person"

    const-string v1, "had_show_work_profile_person"

    invoke-static {v3, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static isShowTip(Ljava/lang/String;)Z
    .locals 3

    .line 77
    sget-boolean v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sIsHaveWorkUser:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    sget-object v0, Lcom/miui/home/launcher/util/WorkProfileHelper;->sHadShowTip:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 81
    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$showNext$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 55
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method static synthetic lambda$showWorkProfileTipsOnDrawer$0(Ljava/util/function/Consumer;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 38
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    .line 40
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 42
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showNext(Landroid/content/Context;)V

    return-void
.end method

.method private static showNext(Landroid/content/Context;)V
    .locals 2

    .line 51
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const p0, 0x7f100291

    .line 52
    invoke-virtual {v0, p0}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f100290

    .line 53
    invoke-virtual {p0, v0}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$Yx0QgB3cFnQPbiBvVb_a-TtQvbw;->INSTANCE:Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$Yx0QgB3cFnQPbiBvVb_a-TtQvbw;

    const v1, 0x7f10028e

    .line 54
    invoke-virtual {p0, v1, v0}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, v0}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method

.method public static showWorkProfileTipsOnDesktop(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-static {p2}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isShowTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "had_show_work_profile_folder"

    .line 69
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f100290

    goto :goto_0

    :cond_2
    const p2, 0x7f10028d

    .line 70
    :goto_0
    new-instance v0, Lmiuix/popupwidget/widget/GuidePopupWindow;

    invoke-direct {v0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x8

    .line 71
    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setArrowMode(I)V

    .line 72
    invoke-virtual {v0, p2}, Lmiuix/popupwidget/widget/GuidePopupWindow;->setGuideText(I)V

    const/4 p0, 0x0

    .line 73
    invoke-virtual {v0, p1, p0, p0}, Lmiuix/popupwidget/widget/GuidePopupWindow;->show(Landroid/view/View;II)V

    return-void
.end method

.method public static showWorkProfileTipsOnDrawer(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    const-string v0, "had_show_work_profile_drawer"

    .line 30
    invoke-static {v0}, Lcom/miui/home/launcher/util/WorkProfileHelper;->isShowTip(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f100291

    .line 35
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setTitle(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10028d

    .line 36
    invoke-virtual {v0, v1}, Lmiui/app/AlertDialog$Builder;->setMessage(I)Lmiui/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f10028f

    new-instance v2, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$0G66q0Cnr7qJdQWnTXtdJKIiaVI;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/launcher/util/-$$Lambda$WorkProfileHelper$0G66q0Cnr7qJdQWnTXtdJKIiaVI;-><init>(Ljava/util/function/Consumer;Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0, v1, v2}, Lmiui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    const/4 p1, 0x0

    .line 44
    invoke-virtual {p0, p1}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object p0

    .line 46
    invoke-virtual {p0}, Lmiui/app/AlertDialog;->show()V

    return-void
.end method
