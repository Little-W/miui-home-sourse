.class public final Lkotlinx/serialization/encoding/CompositeDecoder$Companion;
.super Ljava/lang/Object;
.source "Decoding.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/encoding/CompositeDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Lkotlinx/serialization/encoding/CompositeDecoder$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 272
    new-instance v0, Lkotlinx/serialization/encoding/CompositeDecoder$Companion;

    invoke-direct {v0}, Lkotlinx/serialization/encoding/CompositeDecoder$Companion;-><init>()V

    sput-object v0, Lkotlinx/serialization/encoding/CompositeDecoder$Companion;->$$INSTANCE:Lkotlinx/serialization/encoding/CompositeDecoder$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
