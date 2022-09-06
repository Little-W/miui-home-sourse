.class public abstract Lcom/miui/home/launcher/compat/LauncherCellCount;
.super Ljava/lang/Object;
.source "LauncherCellCount.java"


# static fields
.field public static sRowsAndColumns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    .line 24
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "XMin"

    const v2, 0x7f0b0020

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "YMin"

    const v2, 0x7f0b0023

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "XMax"

    const v2, 0x7f0b001f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "YMax"

    const v2, 0x7f0b0022

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "XDef"

    const v2, 0x7f0b001d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    const-string v1, "YDef"

    const v2, 0x7f0b0021

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private printRowsAndColmns(Landroid/content/res/Resources;Ljava/io/PrintWriter;)V
    .locals 4

    .line 69
    sget-object v0, Lcom/miui/home/launcher/compat/LauncherCellCount;->sRowsAndColumns:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 71
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 74
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Cover="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getThemeValues()Lmiui/content/res/ThemeValues;

    move-result-object v2

    iget-object v2, v2, Lmiui/content/res/ThemeValues;->mIntegers:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v1

    const-string v2, " layoutInfo:"

    .line 47
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "miui_home_screen_cells_size"

    invoke-static {v2, v3}, Lcom/miui/launcher/utils/MiuiSettingsUtils;->getStringFromSystem(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScale()F

    move-result v3

    const-string v4, " curScreenCellsConfig="

    .line 51
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, " curIconSizeScale="

    .line 54
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 56
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, " className="

    .line 57
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v2, " context=launcher"

    .line 60
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->printRowsAndColmns(Landroid/content/res/Resources;Ljava/io/PrintWriter;)V

    .line 62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, " context=app"

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/compat/LauncherCellCount;->printRowsAndColmns(Landroid/content/res/Resources;Ljava/io/PrintWriter;)V

    .line 65
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public abstract getCellCountXDef(Landroid/content/Context;)I
.end method

.method public abstract getCellCountXMax(Landroid/content/Context;)I
.end method

.method public abstract getCellCountXMin(Landroid/content/Context;)I
.end method

.method public abstract getCellCountYDef(Landroid/content/Context;)I
.end method

.method public abstract getCellCountYMax(Landroid/content/Context;)I
.end method

.method public abstract getCellCountYMin(Landroid/content/Context;)I
.end method
