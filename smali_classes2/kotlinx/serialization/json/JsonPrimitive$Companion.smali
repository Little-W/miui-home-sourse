.class public final Lkotlinx/serialization/json/JsonPrimitive$Companion;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/serialization/json/JsonPrimitive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonPrimitive$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final serializer()Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/serialization/KSerializer<",
            "Lkotlinx/serialization/json/JsonPrimitive;",
            ">;"
        }
    .end annotation

    sget-object p0, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    check-cast p0, Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
