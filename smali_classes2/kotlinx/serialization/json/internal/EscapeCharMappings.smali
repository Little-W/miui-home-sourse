.class public final Lkotlinx/serialization/json/internal/EscapeCharMappings;
.super Ljava/lang/Object;


# static fields
.field public static final ESCAPE_2_CHAR:[C

.field public static final INSTANCE:Lkotlinx/serialization/json/internal/EscapeCharMappings;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;

    invoke-direct {v0}, Lkotlinx/serialization/json/internal/EscapeCharMappings;-><init>()V

    sput-object v0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->INSTANCE:Lkotlinx/serialization/json/internal/EscapeCharMappings;

    const/16 v1, 0x75

    new-array v2, v1, [C

    sput-object v2, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x1f

    if-gt v2, v3, :cond_0

    invoke-direct {v0, v2, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    const/16 v2, 0x62

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0x9

    const/16 v2, 0x74

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xa

    const/16 v2, 0x6e

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xc

    const/16 v2, 0x66

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0xd

    const/16 v2, 0x72

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    const/16 v1, 0x2f

    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    const/16 v1, 0x22

    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    const/16 v1, 0x5c

    invoke-direct {v0, v1, v1}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(CC)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initC2ESC(CC)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/internal/EscapeCharMappings;->initC2ESC(IC)V

    return-void
.end method

.method private final initC2ESC(IC)V
    .locals 0

    const/16 p0, 0x75

    if-eq p2, p0, :cond_0

    sget-object p0, Lkotlinx/serialization/json/internal/EscapeCharMappings;->ESCAPE_2_CHAR:[C

    int-to-char p1, p1

    aput-char p1, p0, p2

    :cond_0
    return-void
.end method
