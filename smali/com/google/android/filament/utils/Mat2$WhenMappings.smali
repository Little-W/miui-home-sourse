.class public final synthetic Lcom/google/android/filament/utils/Mat2$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/google/android/filament/utils/MatrixColumn;->values()[Lcom/google/android/filament/utils/MatrixColumn;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/filament/utils/Mat2$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v0, Lcom/google/android/filament/utils/Mat2$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/google/android/filament/utils/MatrixColumn;->X:Lcom/google/android/filament/utils/MatrixColumn;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/google/android/filament/utils/Mat2$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/google/android/filament/utils/MatrixColumn;->Y:Lcom/google/android/filament/utils/MatrixColumn;

    invoke-virtual {v1}, Lcom/google/android/filament/utils/MatrixColumn;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
