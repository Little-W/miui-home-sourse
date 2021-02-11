.class public interface abstract Ljava8/util/stream/LongStream$Builder;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava8/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava8/util/stream/LongStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract accept(J)V
.end method

.method public abstract add(J)Ljava8/util/stream/LongStream$Builder;
.end method

.method public abstract build()Ljava8/util/stream/LongStream;
.end method
