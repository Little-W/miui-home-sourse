.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$aOh2Gkr0vN3LNuuY9yoOw0uy5mQ;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$aOh2Gkr0vN3LNuuY9yoOw0uy5mQ;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$aOh2Gkr0vN3LNuuY9yoOw0uy5mQ;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$reloadClockIfNeed$23(Lcom/miui/home/launcher/Launcher;Ljava/lang/Boolean;)V

    return-void
.end method
