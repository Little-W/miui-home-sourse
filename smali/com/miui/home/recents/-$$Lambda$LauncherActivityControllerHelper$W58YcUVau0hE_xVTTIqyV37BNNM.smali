.class public final synthetic Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

.field private final synthetic f$2:Lcom/miui/home/launcher/LauncherState;

.field private final synthetic f$3:Lcom/miui/home/launcher/LauncherState;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iput-object p3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$2:Lcom/miui/home/launcher/LauncherState;

    iput-object p4, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$3:Lcom/miui/home/launcher/LauncherState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$1:Lcom/miui/home/launcher/anim/AnimatorPlaybackController;

    iget-object v2, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$2:Lcom/miui/home/launcher/LauncherState;

    iget-object v3, p0, Lcom/miui/home/recents/-$$Lambda$LauncherActivityControllerHelper$W58YcUVau0hE_xVTTIqyV37BNNM;->f$3:Lcom/miui/home/launcher/LauncherState;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/recents/LauncherActivityControllerHelper;->lambda$createActivityControllerInternal$0(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/anim/AnimatorPlaybackController;Lcom/miui/home/launcher/LauncherState;Lcom/miui/home/launcher/LauncherState;)V

    return-void
.end method
