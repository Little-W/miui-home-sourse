.class public interface abstract Lkotlinx/serialization/KSerializer;
.super Ljava/lang/Object;
.source "KSerializer.kt"

# interfaces
.implements Lkotlinx/serialization/DeserializationStrategy;
.implements Lkotlinx/serialization/SerializationStrategy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/DeserializationStrategy<",
        "TT;>;",
        "Lkotlinx/serialization/SerializationStrategy<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
.end method
