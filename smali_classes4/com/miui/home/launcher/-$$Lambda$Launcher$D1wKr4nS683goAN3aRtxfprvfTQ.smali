.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$D1wKr4nS683goAN3aRtxfprvfTQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$D1wKr4nS683goAN3aRtxfprvfTQ;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$D1wKr4nS683goAN3aRtxfprvfTQ;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$launchSplitTaskAndIntent$31$Launcher(Ljava/lang/Boolean;)V

    return-void
.end method
