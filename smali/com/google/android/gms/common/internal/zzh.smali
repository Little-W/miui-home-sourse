.class public final Lcom/google/android/gms/common/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final zzdt:I

.field private final zzej:Ljava/lang/String;

.field private final zzek:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/google/android/gms/common/internal/zzh;->zzek:Z

    const/16 p1, 0x81

    iput p1, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    return-void
.end method


# virtual methods
.method final getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzh;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method final zzq()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/zzh;->zzdt:I

    return p0
.end method

.method final zzt()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzh;->zzej:Ljava/lang/String;

    return-object p0
.end method
