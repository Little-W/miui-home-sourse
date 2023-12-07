.class public final Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;
.super Ljava/lang/Object;

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/json/JsonElementSerializersKt;->defer(Lkotlin/jvm/functions/Function0;)Lkotlinx/serialization/descriptors/SerialDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $deferred:Lkotlin/jvm/functions/Function0;

.field private final original$delegate:Lkotlin/Lazy;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->$deferred:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->original$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    iget-object p0, p0, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->original$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method


# virtual methods
.method public getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getElementIndex(Ljava/lang/String;)I
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementIndex(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getElementName(I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getElementsCount()I
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p0

    return p0
.end method

.method public getKind()Lkotlinx/serialization/descriptors/SerialKind;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getKind()Lkotlinx/serialization/descriptors/SerialKind;

    move-result-object p0

    return-object p0
.end method

.method public getSerialName()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lkotlinx/serialization/json/JsonElementSerializersKt$defer$1;->getOriginal()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isNullable()Z
    .locals 0

    invoke-static {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor$DefaultImpls;->isNullable(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result p0

    return p0
.end method
