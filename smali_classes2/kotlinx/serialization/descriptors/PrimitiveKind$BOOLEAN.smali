.class public final Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;
.super Lkotlinx/serialization/descriptors/PrimitiveKind;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/descriptors/PrimitiveKind;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOOLEAN"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;

    invoke-direct {v0}, Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;-><init>()V

    sput-object v0, Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;->INSTANCE:Lkotlinx/serialization/descriptors/PrimitiveKind$BOOLEAN;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlinx/serialization/descriptors/PrimitiveKind;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
