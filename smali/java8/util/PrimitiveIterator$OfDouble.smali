.class public interface abstract Ljava8/util/PrimitiveIterator$OfDouble;
.super Ljava/lang/Object;
.source "PrimitiveIterator.java"

# interfaces
.implements Ljava8/util/PrimitiveIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/PrimitiveIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OfDouble"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/PrimitiveIterator<",
        "Ljava/lang/Double;",
        "Ljava8/util/function/DoubleConsumer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract forEachRemaining(Ljava8/util/function/DoubleConsumer;)V
.end method

.method public abstract next()Ljava/lang/Double;
.end method

.method public abstract nextDouble()D
.end method
