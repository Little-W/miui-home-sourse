.class public Lcom/miui/home/recents/CloseShortcutIconUtils;
.super Ljava/lang/Object;
.source "CloseShortcutIconUtils.java"


# static fields
.field public static sGoogleSearchBox:Landroid/content/ComponentName;

.field public static sPeopleActivity:Landroid/content/ComponentName;

.field private static final sRelativeComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/ComponentName;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation
.end field

.field public static sSecurityCenter:Landroid/content/ComponentName;

.field private static final sSecurityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public static sSecurityManager:Landroid/content/ComponentName;

.field public static sSecurityManagerNew:Landroid/content/ComponentName;

.field public static sTwelveKeyDialer:Landroid/content/ComponentName;

.field public static sbugreportEntity:Landroid/content/ComponentName;

.field public static sbugreportLaunch:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    .line 18
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitymanager"

    const-string v2, "com.miui.securitymain.SCMainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManager:Landroid/content/ComponentName;

    .line 20
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycenter"

    const-string v2, "com.miui.securitymain.MainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManagerNew:Landroid/content/ComponentName;

    .line 21
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.miui.securityscan.MainEntryActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityCenter:Landroid/content/ComponentName;

    .line 23
    new-instance v0, Lcom/miui/home/recents/CloseShortcutIconUtils$1;

    invoke-direct {v0}, Lcom/miui/home/recents/CloseShortcutIconUtils$1;-><init>()V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityList:Ljava/util/List;

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.miservice"

    const-string v2, "com.miui.miservice.main.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportLaunch:Landroid/content/ComponentName;

    .line 29
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.miui.bugreport"

    const-string v2, "com.miui.feedback.HomeActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportEntity:Landroid/content/ComponentName;

    .line 30
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.googlequicksearchbox"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    .line 35
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManager:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityCenter:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityManagerNew:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sSecurityList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportEntity:Landroid/content/ComponentName;

    sget-object v2, Lcom/miui/home/recents/CloseShortcutIconUtils;->sbugreportLaunch:Landroid/content/ComponentName;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isMultiWindowStateNotTheSameBetweenSysAndLauncherLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 74
    :cond_1
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    .line 75
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 76
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v1

    if-nez v1, :cond_3

    .line 80
    :try_start_0
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getRelativeComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 81
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    goto :goto_0

    :catch_0
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    :goto_1
    return-object v0
.end method

.method private static getRelativeComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sRelativeComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 2

    .line 44
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sGoogleSearchBox:Landroid/content/ComponentName;

    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    .line 50
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 53
    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    return-object p0
.end method
