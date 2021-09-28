.class public Lcom/miui/home/recents/CloseShortcutIconUtils;
.super Ljava/lang/Object;
.source "CloseShortcutIconUtils.java"


# static fields
.field public static sPeopleActivity:Landroid/content/ComponentName;

.field public static sTwelveKeyDialer:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.TwelveKeyDialer"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    .line 12
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.contacts"

    const-string v2, "com.android.contacts.activities.PeopleActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public static getCloseShortcutIcon(Landroid/content/ComponentName;ILcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutIcon;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->isMultiWindowStateNotTheSameBetweenSysAndLauncherLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 44
    :cond_1
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 46
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    if-nez v1, :cond_2

    .line 48
    invoke-static {p0}, Lcom/miui/home/recents/CloseShortcutIconUtils;->getRelativeContactComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1, v0}, Lcom/miui/home/launcher/Launcher;->getShowingItem(Ljava/lang/String;ILandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    .line 51
    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getClosingShortcutIcon()Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object v1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static getRelativeContactComponent(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 1

    .line 29
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    return-object p0

    .line 31
    :cond_0
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 32
    sget-object p0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static modifyContactComponentIfNeeded(Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 2

    .line 15
    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 18
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 20
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getLastLaunchComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 21
    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sTwelveKeyDialer:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/miui/home/recents/CloseShortcutIconUtils;->sPeopleActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    return-object p0
.end method
