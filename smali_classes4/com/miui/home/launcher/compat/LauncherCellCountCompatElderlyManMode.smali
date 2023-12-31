.class public Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
.super Lcom/miui/home/launcher/compat/LauncherCellCount;
.source "LauncherCellCountCompatElderlyManMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCount;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;
    .locals 1

    .line 15
    invoke-static {}, Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode$LauncherCellCountCompatElderlyManModeInstance;->access$000()Lcom/miui/home/launcher/compat/LauncherCellCountCompatElderlyManMode;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCellCountXDef(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountXMax(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountXMin(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public getCellCountYDef(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getCellCountYMax(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public getCellCountYMin(Landroid/content/Context;)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method
