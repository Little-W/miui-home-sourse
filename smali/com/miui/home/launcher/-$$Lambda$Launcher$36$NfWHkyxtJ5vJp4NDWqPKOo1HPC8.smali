.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$36$NfWHkyxtJ5vJp4NDWqPKOo1HPC8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$36;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$36$NfWHkyxtJ5vJp4NDWqPKOo1HPC8;->f$0:Lcom/miui/home/launcher/Launcher$36;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$36$NfWHkyxtJ5vJp4NDWqPKOo1HPC8;->f$0:Lcom/miui/home/launcher/Launcher$36;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$36;->lambda$onChange$1$Launcher$36(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
