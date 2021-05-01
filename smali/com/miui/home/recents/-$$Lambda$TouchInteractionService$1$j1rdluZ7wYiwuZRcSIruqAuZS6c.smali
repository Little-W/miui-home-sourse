.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$j1rdluZ7wYiwuZRcSIruqAuZS6c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/TouchInteractionService;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$j1rdluZ7wYiwuZRcSIruqAuZS6c;->f$0:Lcom/miui/home/recents/TouchInteractionService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$TouchInteractionService$1$j1rdluZ7wYiwuZRcSIruqAuZS6c;->f$0:Lcom/miui/home/recents/TouchInteractionService;

    invoke-static {v0}, Lcom/miui/home/recents/TouchInteractionService$1;->lambda$onSystemUiStateChanged$109(Lcom/miui/home/recents/TouchInteractionService;)V

    return-void
.end method
