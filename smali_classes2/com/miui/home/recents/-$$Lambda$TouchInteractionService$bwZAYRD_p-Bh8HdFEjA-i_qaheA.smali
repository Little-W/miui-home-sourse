.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$bwZAYRD_p-Bh8HdFEjA-i_qaheA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$bwZAYRD_p-Bh8HdFEjA-i_qaheA;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$bwZAYRD_p-Bh8HdFEjA-i_qaheA;->f$0:Landroid/content/Intent;

    invoke-static {p0}, Lcom/miui/home/recents/TouchInteractionService;->lambda$preloadOverview$0(Landroid/content/Intent;)V

    return-void
.end method
