.class public Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
.super Lcom/google/android/gms/common/UserRecoverableException;


# instance fields
.field private final zzag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/UserRecoverableException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    iput p1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zzag:I

    return-void
.end method


# virtual methods
.method public getConnectionStatusCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->zzag:I

    return p0
.end method
