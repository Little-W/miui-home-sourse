.class public final synthetic Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$XeLIcoy5zRMbp8g0SqMToXzJnT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Lcom/miui/home/recents/views/RecentsContainer$7;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/recents/views/RecentsContainer$7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$XeLIcoy5zRMbp8g0SqMToXzJnT0;->f$0:Lcom/miui/home/recents/views/RecentsContainer$7;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/home/recents/views/-$$Lambda$RecentsContainer$7$XeLIcoy5zRMbp8g0SqMToXzJnT0;->f$0:Lcom/miui/home/recents/views/RecentsContainer$7;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/miui/home/recents/views/RecentsContainer$7;->lambda$onChange$168(Lcom/miui/home/recents/views/RecentsContainer$7;Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
