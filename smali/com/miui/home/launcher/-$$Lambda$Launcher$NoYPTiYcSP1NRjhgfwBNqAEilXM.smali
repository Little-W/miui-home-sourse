.class public final synthetic Lcom/miui/home/launcher/-$$Lambda$Launcher$NoYPTiYcSP1NRjhgfwBNqAEilXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/Launcher;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/Launcher;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NoYPTiYcSP1NRjhgfwBNqAEilXM;->f$0:Lcom/miui/home/launcher/Launcher;

    iput-boolean p2, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NoYPTiYcSP1NRjhgfwBNqAEilXM;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NoYPTiYcSP1NRjhgfwBNqAEilXM;->f$0:Lcom/miui/home/launcher/Launcher;

    iget-boolean p0, p0, Lcom/miui/home/launcher/-$$Lambda$Launcher$NoYPTiYcSP1NRjhgfwBNqAEilXM;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->lambda$showStatusBar$33$Launcher(Z)V

    return-void
.end method
