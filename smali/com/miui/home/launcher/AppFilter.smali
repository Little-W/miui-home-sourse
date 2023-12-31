.class public Lcom/miui/home/launcher/AppFilter;
.super Ljava/lang/Object;
.source "AppFilter.java"


# static fields
.field private static final mSkippedItems:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    .line 24
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.documentsui"

    const-string v2, "com.android.documentsui.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p0, :cond_0

    .line 26
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.app.settings.GoogleSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.google.android.gms.common.settings.GoogleSettingsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.qualcomm.qti.modemtestmode"

    const-string v2, "com.qualcomm.qti.modemtestmode.MbnFileActivate"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.inputmethod.pinyin"

    const-string v2, "com.google.android.apps.inputmethod.libs.framework.core.LauncherActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.opera.max.oem.xiaomi"

    const-string v2, "com.opera.max.ui.v2.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.inputmethod.latin"

    const-string v2, "com.android.inputmethod.latin.setup.SetupActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->needHideThemeManager(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 34
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.ThemeResourceTabActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPadDevice()Z

    move-result p0

    const-string v0, "com.android.contacts.activities.TwelveKeyDialer"

    const-string v1, "com.android.contacts"

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    const-string v2, "ro.radio.noril"

    invoke-static {v2, p0}, Lcom/miui/launcher/utils/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 37
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.mms"

    const-string v4, "com.android.mms.ui.MmsTabActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_2
    sget-object p0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v2, "clover"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->isVoiceServiceEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 41
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static newInstance()Lcom/miui/home/launcher/AppFilter;
    .locals 1

    .line 18
    new-instance v0, Lcom/miui/home/launcher/AppFilter;

    invoke-direct {v0}, Lcom/miui/home/launcher/AppFilter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSkipedList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 46
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    return-object p0
.end method

.method public shouldShowApp(Landroid/content/ComponentName;)Z
    .locals 1

    .line 50
    sget-object p0, Lcom/miui/home/launcher/AppFilter;->mSkippedItems:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 54
    :cond_0
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_Q:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 56
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.app.AppDetailsActivity"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    return v0
.end method
