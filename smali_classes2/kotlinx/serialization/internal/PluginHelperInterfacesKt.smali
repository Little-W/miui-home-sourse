.class public final Lkotlinx/serialization/internal/PluginHelperInterfacesKt;
.super Ljava/lang/Object;
.source "PluginHelperInterfaces.kt"


# static fields
.field public static final EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sput-object v0, Lkotlinx/serialization/internal/PluginHelperInterfacesKt;->EMPTY_SERIALIZER_ARRAY:[Lkotlinx/serialization/KSerializer;

    return-void
.end method
