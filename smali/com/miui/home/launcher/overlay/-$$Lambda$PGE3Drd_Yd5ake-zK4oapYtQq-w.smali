.class public final synthetic Lcom/miui/home/launcher/overlay/-$$Lambda$PGE3Drd_Yd5ake-zK4oapYtQq-w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/launcher/touch/SwipeDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/touch/SwipeDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/overlay/-$$Lambda$PGE3Drd_Yd5ake-zK4oapYtQq-w;->f$0:Lcom/miui/home/launcher/touch/SwipeDetector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/home/launcher/overlay/-$$Lambda$PGE3Drd_Yd5ake-zK4oapYtQq-w;->f$0:Lcom/miui/home/launcher/touch/SwipeDetector;

    invoke-virtual {v0}, Lcom/miui/home/launcher/touch/SwipeDetector;->finishedScrolling()V

    return-void
.end method
