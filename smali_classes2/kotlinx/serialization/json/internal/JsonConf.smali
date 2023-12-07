.class public final Lkotlinx/serialization/json/internal/JsonConf;
.super Ljava/lang/Object;


# instance fields
.field public final allowSpecialFloatingPointValues:Z

.field public final allowStructuredMapKeys:Z

.field public final classDiscriminator:Ljava/lang/String;

.field public final coerceInputValues:Z

.field public final encodeDefaults:Z

.field public final ignoreUnknownKeys:Z

.field public final isLenient:Z

.field public final prettyPrint:Z

.field public final prettyPrintIndent:Ljava/lang/String;

.field public final serializersModule:Lkotlinx/serialization/modules/SerializersModule;

.field public final useArrayPolymorphism:Z


# direct methods
.method public constructor <init>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lkotlinx/serialization/json/internal/JsonConf;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLkotlinx/serialization/modules/SerializersModule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLkotlinx/serialization/modules/SerializersModule;)V
    .locals 1

    const-string v0, "prettyPrintIndent"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDiscriminator"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializersModule"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    iput-boolean p2, p0, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    iput-boolean p3, p0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    iput-boolean p4, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    iput-boolean p5, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    iput-object p6, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    iput-boolean p7, p0, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    iput-boolean p8, p0, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    iput-object p9, p0, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    iput-boolean p10, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    iput-object p11, p0, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    return-void
.end method

.method public synthetic constructor <init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLkotlinx/serialization/modules/SerializersModule;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p13, p12, 0x1

    const/4 v0, 0x0

    if-eqz p13, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p13, p12, 0x2

    if-eqz p13, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p13, p12, 0x4

    if-eqz p13, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p13, p12, 0x8

    if-eqz p13, :cond_3

    move p4, v0

    :cond_3
    and-int/lit8 p13, p12, 0x10

    if-eqz p13, :cond_4

    move p5, v0

    :cond_4
    and-int/lit8 p13, p12, 0x20

    if-eqz p13, :cond_5

    const-string p6, "    "

    :cond_5
    and-int/lit8 p13, p12, 0x40

    if-eqz p13, :cond_6

    move p7, v0

    :cond_6
    and-int/lit16 p13, p12, 0x80

    if-eqz p13, :cond_7

    move p8, v0

    :cond_7
    and-int/lit16 p13, p12, 0x100

    if-eqz p13, :cond_8

    const-string p9, "type"

    :cond_8
    and-int/lit16 p13, p12, 0x200

    if-eqz p13, :cond_9

    move p10, v0

    :cond_9
    and-int/lit16 p12, p12, 0x400

    if-eqz p12, :cond_a

    invoke-static {}, Lkotlinx/serialization/modules/SerializersModuleKt;->getEmptySerializersModule()Lkotlinx/serialization/modules/SerializersModule;

    move-result-object p11

    :cond_a
    invoke-direct/range {p0 .. p11}, Lkotlinx/serialization/json/internal/JsonConf;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLkotlinx/serialization/modules/SerializersModule;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlinx/serialization/json/internal/JsonConf;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/internal/JsonConf;

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    iget-object v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    iget-object v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    iget-object p1, p1, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    if-eqz v2, :cond_2

    move v2, v1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    if-eqz v2, :cond_3

    move v2, v1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    if-eqz v2, :cond_4

    move v2, v1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_5
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    if-eqz v2, :cond_6

    move v2, v1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    if-eqz v2, :cond_7

    move v2, v1

    :cond_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_8
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_a
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JsonConf(encodeDefaults="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->encodeDefaults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreUnknownKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->ignoreUnknownKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->isLenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowStructuredMapKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowStructuredMapKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrintIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->prettyPrintIndent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coerceInputValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->coerceInputValues:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useArrayPolymorphism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->useArrayPolymorphism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", classDiscriminator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->classDiscriminator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowSpecialFloatingPointValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/internal/JsonConf;->allowSpecialFloatingPointValues:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serializersModule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/json/internal/JsonConf;->serializersModule:Lkotlinx/serialization/modules/SerializersModule;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
