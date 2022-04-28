.class final Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PluginGeneratedSerialDescriptor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;-><init>(Ljava/lang/String;Lkotlinx/serialization/internal/GeneratedSerializer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "[",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPluginGeneratedSerialDescriptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,132:1\n11208#2:133\n11543#2,3:134\n*E\n*S KotlinDebug\n*F\n+ 1 PluginGeneratedSerialDescriptor.kt\nkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2\n*L\n41#1:133\n41#1,3:134\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;


# direct methods
.method constructor <init>(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;->invoke()[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()[Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 5

    .line 41
    iget-object v0, p0, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor$typeParameterDescriptors$2;->this$0:Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;

    invoke-static {v0}, Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;->access$getGeneratedSerializer$p(Lkotlinx/serialization/internal/PluginGeneratedSerialDescriptor;)Lkotlinx/serialization/internal/GeneratedSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlinx/serialization/internal/GeneratedSerializer;->typeParametersSerializers()[Lkotlinx/serialization/KSerializer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 134
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 41
    invoke-interface {v4}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 136
    :cond_0
    check-cast v1, Ljava/util/List;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 41
    :goto_1
    invoke-static {v1}, Lkotlinx/serialization/internal/Platform_commonKt;->compactArray(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    return-object v0
.end method
