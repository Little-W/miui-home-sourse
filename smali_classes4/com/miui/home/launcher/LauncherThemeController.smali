.class Lcom/miui/home/launcher/LauncherThemeController;
.super Ljava/lang/Object;
.source "LauncherThemeController.java"


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherThemeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 14
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherThemeController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher;->mMaMlViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/maml/MaMlWidgetView;

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/maml/MaMlWidgetView;->sendEvent(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
