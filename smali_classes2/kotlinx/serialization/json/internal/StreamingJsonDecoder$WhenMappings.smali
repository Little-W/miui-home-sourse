.class public final synthetic Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 5

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->LIST:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->MAP:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v0, Lkotlinx/serialization/json/internal/StreamingJsonDecoder$WhenMappings;->$EnumSwitchMapping$1:[I

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->POLY_OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-virtual {v1}, Lkotlinx/serialization/json/internal/WriteMode;->ordinal()I

    move-result v1

    aput v4, v0, v1

    return-void
.end method
