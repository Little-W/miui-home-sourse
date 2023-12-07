.class public final Lkotlinx/serialization/json/JsonKt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonKt\n+ 2 Serializers.kt\nkotlinx/serialization/SerializersKt__SerializersKt\n+ 3 Platform.common.kt\nkotlinx/serialization/internal/Platform_commonKt\n*L\n1#1,276:1\n32#2:277\n32#2:279\n80#3:278\n80#3:280\n*E\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonKt\n*L\n134#1:277\n144#1:279\n134#1:278\n144#1:280\n*E\n"
.end annotation


# direct methods
.method public static final Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/json/Json;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonBuilder;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/serialization/json/Json;"
        }
    .end annotation

    const-string v0, "from"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builderAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/JsonBuilder;

    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getConfiguration$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object p0

    invoke-direct {v0, p0}, Lkotlinx/serialization/json/JsonBuilder;-><init>(Lkotlinx/serialization/json/internal/JsonConf;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonBuilder;->build$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;

    move-result-object p0

    new-instance p1, Lkotlinx/serialization/json/JsonImpl;

    invoke-direct {p1, p0}, Lkotlinx/serialization/json/JsonImpl;-><init>(Lkotlinx/serialization/json/internal/JsonConf;)V

    check-cast p1, Lkotlinx/serialization/json/Json;

    return-object p1
.end method

.method public static synthetic Json$default(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/serialization/json/Json;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    check-cast p0, Lkotlinx/serialization/json/Json;

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/serialization/json/JsonKt;->Json(Lkotlinx/serialization/json/Json;Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/json/Json;

    move-result-object p0

    return-object p0
.end method
