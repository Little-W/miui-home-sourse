.class final Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SerialDescriptors.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->toString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;


# direct methods
.method constructor <init>(Lkotlinx/serialization/descriptors/SerialDescriptorImpl;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(I)Ljava/lang/CharSequence;
    .locals 2

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-virtual {v1, p1}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->getElementName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;->this$0:Lkotlinx/serialization/descriptors/SerialDescriptorImpl;

    invoke-virtual {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl;->getElementDescriptor(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 267
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lkotlinx/serialization/descriptors/SerialDescriptorImpl$toString$1;->invoke(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
