.class final Lkotlinx/serialization/json/JsonImpl;
.super Lkotlinx/serialization/json/Json;
.source "Json.kt"


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonConf;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 261
    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/internal/JsonConf;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 264
    invoke-direct {p0}, Lkotlinx/serialization/json/JsonImpl;->validateConfiguration()V

    return-void
.end method

.method private final validateConfiguration()V
    .locals 3

    .line 268
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonImpl;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v0

    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleKt;->getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/PolymorphismValidator;

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonImpl;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v1

    iget-boolean v1, v1, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonImpl;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object v2

    iget-object v2, v2, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/PolymorphismValidator;-><init>(ZLjava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonImpl;->getSerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p0

    check-cast v0, Lkotlinx/serialization/modules/SerializersModuleCollector;

    invoke-virtual {p0, v0}, Lkotlinx/serialization/modules/SerializersModule;->dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V

    return-void
.end method
