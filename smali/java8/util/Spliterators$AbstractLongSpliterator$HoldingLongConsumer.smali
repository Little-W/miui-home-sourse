.class final Ljava8/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;
.super Ljava/lang/Object;
.source "Spliterators.java"

# interfaces
.implements Ljava8/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/Spliterators$AbstractLongSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "HoldingLongConsumer"
.end annotation


# instance fields
.field value:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    .line 2496
    iput-wide p1, p0, Ljava8/util/Spliterators$AbstractLongSpliterator$HoldingLongConsumer;->value:J

    return-void
.end method
