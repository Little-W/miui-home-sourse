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
    .locals 1

    .line 19
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object v0

    iget-object v0, v0, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0b001b

    .line 11
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatJP;->isValuesOverrideByTheme(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    return p1
.end method
