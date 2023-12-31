.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$zpkWdKsiSVZ1i9oPLo3aH8nJkN4;
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

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zpkWdKsiSVZ1i9oPLo3aH8nJkN4;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$zpkWdKsiSVZ1i9oPLo3aH8nJkN4;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$reloadClockIfNeed$27$Launcher(Ljava/lang/Boolean;)V

    return-void
.end method
