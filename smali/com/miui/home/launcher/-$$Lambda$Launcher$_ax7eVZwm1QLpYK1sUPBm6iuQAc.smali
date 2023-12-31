.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$_ax7eVZwm1QLpYK1sUPBm6iuQAc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ax7eVZwm1QLpYK1sUPBm6iuQAc;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ax7eVZwm1QLpYK1sUPBm6iuQAc;->f$1:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ax7eVZwm1QLpYK1sUPBm6iuQAc;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$_ax7eVZwm1QLpYK1sUPBm6iuQAc;->f$1:Z

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$reloadClockIfNeed$26$Launcher(ZLjava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
