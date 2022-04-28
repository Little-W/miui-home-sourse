.class final Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Tagged.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/TaggedDecoder;->decodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic $deserializer:Lkotlinx/serialization/DeserializationStrategy;

.field final synthetic $previousValue:Ljava/lang/Object;

.field final synthetic this$0:Lkotlinx/serialization/internal/TaggedDecoder;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/TaggedDecoder;Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    iput-object p2, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->$deserializer:Lkotlinx/serialization/DeserializationStrategy;

    iput-object p3, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->$previousValue:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/TaggedDecoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    .line 266
    iget-object v1, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->$deserializer:Lkotlinx/serialization/DeserializationStrategy;

    .line 267
    iget-object v2, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->$previousValue:Ljava/lang/Object;

    .line 265
    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/internal/TaggedDecoder;->decodeSerializableValue(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/internal/TaggedDecoder$decodeNullableSerializableElement$1;->this$0:Lkotlinx/serialization/internal/TaggedDecoder;

    invoke-virtual {v0}, Lkotlinx/serialization/internal/TaggedDecoder;->decodeNull()Ljava/lang/Void;

    move-result-object v0

    :goto_0
    return-object v0
.end method
