.class public interface abstract Ljava8/util/stream/Sink$OfDouble;
.super Ljava/lang/Object;
.source "Sink.java"

# interfaces
.implements Ljava8/util/function/DoubleConsumer;
.implements Ljava8/util/stream/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/Sink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/function/DoubleConsumer;",
        "Ljava8/util/stream/Sink<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract accept(D)V
.end method

.method public abstract accept(Ljava/lang/Double;)V
.end method
