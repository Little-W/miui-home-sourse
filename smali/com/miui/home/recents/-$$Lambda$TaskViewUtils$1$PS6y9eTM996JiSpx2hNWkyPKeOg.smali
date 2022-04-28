.class public final synthetic Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;->f$0:Lcom/miui/home/recents/views/TaskView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/-$$Lambda$TaskViewUtils$1$PS6y9eTM996JiSpx2hNWkyPKeOg;->f$0:Lcom/miui/home/recents/views/TaskView;

    invoke-static {v0}, Lcom/miui/home/recents/TaskViewUtils$1;->lambda$onAnimationEnd$1(Lcom/miui/home/recents/views/TaskView;)V

    return-void
.end method
