.class public final Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;
.super Ljava/lang/Object;
.source "SerialDescriptor.kt"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private elementsLeft:I

.field final synthetic this$0:Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;


# direct methods
.method constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iget-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;

    iget-object p1, p1, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result p1

    iput p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->elementsLeft:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 0

    .line 275
    iget p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->elementsLeft:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    .line 273
    invoke-virtual {p0}, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->next()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public next()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 4

    .line 278
    iget-object v0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;

    iget-object v0, v0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;

    iget-object v1, v1, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1;->$this_elementDescriptors$inlined:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementsCount()I

    move-result v1

    iget v2, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->elementsLeft:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lkotlinx/serialization/descriptors/SerialDescriptorKt$elementDescriptors$$inlined$Iterable$1$lambda$1;->elementsLeft:I

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
