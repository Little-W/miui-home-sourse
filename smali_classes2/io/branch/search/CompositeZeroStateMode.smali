.class public abstract Lio/branch/search/CompositeZeroStateMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/branch/search/CompositeZeroStateMode$Local;,
        Lio/branch/search/CompositeZeroStateMode$Remote;,
        Lio/branch/search/CompositeZeroStateMode$Companion;
    }
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lio/branch/search/CompositeZeroStateMode$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/branch/search/CompositeZeroStateMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/branch/search/CompositeZeroStateMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/branch/search/CompositeZeroStateMode;->Companion:Lio/branch/search/CompositeZeroStateMode$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/branch/search/CompositeZeroStateMode;-><init>()V

    return-void
.end method
