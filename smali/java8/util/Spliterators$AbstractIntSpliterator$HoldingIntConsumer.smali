.class final Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators$AbstractIntSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingIntConsumer"
.end annotation


# instance fields
.field value:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 0

    .line 2338
    iput p1, p0, Ljava8/util/Spliterators$AbstractIntSpliterator$HoldingIntConsumer;->value:I

    return-void
.end method
