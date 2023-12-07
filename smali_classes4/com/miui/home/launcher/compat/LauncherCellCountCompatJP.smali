.class public Lcom/miui/home/launcher/compat/LauncherCellCountCompatJP;
.super Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;
.source "LauncherCellCountCompatJP.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatResource;-><init>()V

    return-void
.end method

.method private isValuesOverrideByTheme(I)Z
    .locals 0

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object p0

    iget-object p0, p0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f0b001d

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatJP;->isValuesOverrideByTheme(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0020

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0
.end method
