.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$eluG1xk9P6zziGYAPsVpahxZm3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eluG1xk9P6zziGYAPsVpahxZm3o;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$eluG1xk9P6zziGYAPsVpahxZm3o;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$appOnClick$28$Launcher(Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
