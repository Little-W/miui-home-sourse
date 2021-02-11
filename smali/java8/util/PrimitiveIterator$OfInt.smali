.class public interface abstract Ljava8/util/PrimitiveIterator$OfInt;
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
    name = "OfInt"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava8/util/PrimitiveIterator<",
        "Ljava/lang/Integer;",
        "Ljava8/util/function/IntConsumer;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract forEachRemaining(Ljava8/util/function/IntConsumer;)V
.end method

.method public abstract next()Ljava/lang/Integer;
.end method

.method public abstract nextInt()I
.end method
