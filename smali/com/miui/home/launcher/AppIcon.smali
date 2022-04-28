.class public Lcom/miui/home/launcher/AppIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "AppIcon.java"


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/AppIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/miui/home/launcher/AppIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    return v0
.end method

.method protected initNoWordAdapter()Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;
    .locals 1

    .line 29
    new-instance v0, Lcom/miui/home/launcher/AppIcon$1;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/AppIcon$1;-><init>(Lcom/miui/home/launcher/AppIcon;Lcom/miui/home/launcher/ItemIcon;)V

    return-object v0
.end method
