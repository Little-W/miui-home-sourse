.class Lcom/miui/home/launcher/Launcher$4;
.super Lmiuix/animation/listener/TransitionListener;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/Launcher;->reLoadLayoutOnSoscChange(Lcom/miui/launcher/sosc/module/SoscEvent;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/Launcher;

.field final synthetic val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iput-object p2, p0, Lcom/miui/home/launcher/Launcher$4;->val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/Object;)V
    .locals 3

    .line 1352
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 1353
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->access$800(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Lmiuix/animation/listener/TransitionListener;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {p1, v1}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 1354
    iget-object p1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$4;->val$soscEvent:Lcom/miui/launcher/sosc/module/SoscEvent;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/Launcher;->access$900(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/sosc/module/SoscEvent;)V

    new-array p1, v0, [Ljava/lang/Object;

    .line 1355
    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$1100(Lcom/miui/home/launcher/Launcher;)Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v1

    aput-object v1, p1, v2

    invoke-static {p1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->access$1000(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/base/AnimConfig;

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$4;->this$0:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->access$700(Lcom/miui/home/launcher/Launcher;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-interface {p1, v1, v0}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    return-void
.end method
