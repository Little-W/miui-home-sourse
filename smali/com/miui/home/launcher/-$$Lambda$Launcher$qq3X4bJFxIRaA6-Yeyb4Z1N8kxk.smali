.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$qq3X4bJFxIRaA6-Yeyb4Z1N8kxk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava8/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$qq3X4bJFxIRaA6-Yeyb4Z1N8kxk;->f$0:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$qq3X4bJFxIRaA6-Yeyb4Z1N8kxk;->f$0:Lcom/miui/home/launcher/Launcher;

    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/miui/home/launcher/Launcher;->lambda$null$23(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method
