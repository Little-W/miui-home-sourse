.class public abstract Lkotlinx/serialization/descriptors/PolymorphicKind;
.super Lkotlinx/serialization/descriptors/SerialKind;
.source "SerialKinds.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/descriptors/PolymorphicKind$SEALED;,
        Lkotlinx/serialization/descriptors/PolymorphicKind$OPEN;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/SerialKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 242
    invoke-direct {p0}, Lkotlinx/serialization/descriptors/PolymorphicKind;-><init>()V

    return-void
.end method
