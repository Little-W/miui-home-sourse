.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$37$Iq5g1v8De0p1OWCBqIPjULcax24;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher$37;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher$37;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$Iq5g1v8De0p1OWCBqIPjULcax24;->f$0:Lcom/miui/home/launcher/Launcher$37;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$37$Iq5g1v8De0p1OWCBqIPjULcax24;->f$0:Lcom/miui/home/launcher/Launcher$37;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher$37;->lambda$onChange$1$Launcher$37(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
