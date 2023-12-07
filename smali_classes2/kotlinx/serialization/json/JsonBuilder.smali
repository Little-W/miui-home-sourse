.class public final Lkotlinx/serialization/json/JsonBuilder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJson.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,276:1\n1019#2,2:277\n*E\n*S KotlinDebug\n*F\n+ 1 Json.kt\nkotlinx/serialization/json/JsonBuilder\n*L\n245#1,2:277\n*E\n"
.end annotation


# instance fields
.field private allowSpecialFloatingPointValues:Z

.field private allowStructuredMapKeys:Z

.field private classDiscriminator:Ljava/lang/String;

.field private coerceInputValues:Z

.field private encodeDefaults:Z

.field private ignoreUnknownKeys:Z

.field private isLenient:Z

.field private prettyPrint:Z

.field private prettyPrintIndent:Ljava/lang/String;

.field private serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field private useArrayPolymorphism:Z


# direct methods
.method public constructor <init>(Lkotlinx/serialization/json/internal/JsonConf;)V
    .locals 1

    const-string v0, "conf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    iget-object v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    iget-object v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    iput-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    iget-boolean v0, p1, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    iput-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    iget-object p1, p1, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    iput-object p1, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method


# virtual methods
.method public final build$kotlinx_serialization_json()Lkotlinx/serialization/json/internal/JsonConf;
    .locals 13

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    const-string v1, "type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    const-string v1, "    "

    if-nez v0, :cond_3

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_5

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Indent should not be specified when default printing mode is used"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :cond_3
    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_9

    iget-object v0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_7

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_5

    const/16 v5, 0x9

    if-eq v4, v5, :cond_5

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move v4, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v4, v1

    :goto_3
    if-nez v4, :cond_6

    move v1, v2

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    :goto_4
    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only whitespace, tab, newline and carriage return are allowed as pretty print symbols. Had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_9
    :goto_5
    new-instance v0, Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    iget-boolean v3, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    iget-boolean v4, p0, Lkotlinx/serialization/json/JsonBuilder;->isLenient:Z

    iget-boolean v5, p0, Lkotlinx/serialization/json/JsonBuilder;->allowStructuredMapKeys:Z

    iget-boolean v6, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrint:Z

    iget-object v7, p0, Lkotlinx/serialization/json/JsonBuilder;->prettyPrintIndent:Ljava/lang/String;

    iget-boolean v8, p0, Lkotlinx/serialization/json/JsonBuilder;->coerceInputValues:Z

    iget-boolean v9, p0, Lkotlinx/serialization/json/JsonBuilder;->useArrayPolymorphism:Z

    iget-object v10, p0, Lkotlinx/serialization/json/JsonBuilder;->classDiscriminator:Ljava/lang/String;

    iget-boolean v11, p0, Lkotlinx/serialization/json/JsonBuilder;->allowSpecialFloatingPointValues:Z

    iget-object v12, p0, Lkotlinx/serialization/json/JsonBuilder;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lkotlinx/serialization/json/internal/JsonConf;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLkotlinx/serialization/modules/SerializersModule;)V

    return-object v0
.end method

.method public final setEncodeDefaults(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->encodeDefaults:Z

    return-void
.end method

.method public final setIgnoreUnknownKeys(Z)V
    .locals 0

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonBuilder;->ignoreUnknownKeys:Z

    return-void
.end method
