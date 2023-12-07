.class Lcom/google/android/filament/EntityManager$Holder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/filament/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/google/android/filament/EntityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/filament/EntityManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/EntityManager;-><init>(Lcom/google/android/filament/EntityManager$1;)V

    sput-object v0, Lcom/google/android/filament/EntityManager$Holder;->INSTANCE:Lcom/google/android/filament/EntityManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
