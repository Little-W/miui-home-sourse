.class Landroidx/media/VolumeProviderCompatApi21;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media/VolumeProviderCompatApi21$Delegate;
    }
.end annotation


# direct methods
.method public static createVolumeProvider(IIILandroidx/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroidx/media/VolumeProviderCompatApi21$1;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media/VolumeProviderCompatApi21$1;-><init>(IIILandroidx/media/VolumeProviderCompatApi21$Delegate;)V

    return-object v0
.end method
