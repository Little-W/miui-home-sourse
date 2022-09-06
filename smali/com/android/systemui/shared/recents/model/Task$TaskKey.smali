.class public Lcom/android/systemui/shared/recents/model/Task$TaskKey;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shared/recents/model/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskKey"
.end annotation


# instance fields
.field public final baseIntent:Landroid/content/Intent;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public final id:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isScreening:Z

.field public isThumbnailBlur:Z

.field public isWorldCirculate:Z

.field public lastActiveTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mHashCode:I

.field public stackId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final userId:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public windowingMode:I

.field public worldCirculateDeviceName:Ljava/lang/String;

.field public worldCirculateOwnerName:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILandroid/content/Intent;IJZZLandroid/content/ComponentName;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    const-string v0, "AndroidPhone"

    .line 84
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateDeviceName:Ljava/lang/String;

    const-string v0, ""

    .line 85
    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateOwnerName:Ljava/lang/String;

    .line 106
    iput p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 107
    iput p2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 108
    iput p3, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    .line 109
    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 110
    iput p5, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 111
    iput-wide p6, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 112
    iput-boolean p8, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 113
    iput-boolean p9, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 114
    iput-object p10, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    .line 115
    invoke-direct {p0, p11}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public constructor <init>(Landroid/app/TaskInfo;Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 3

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    const-string v1, "AndroidPhone"

    .line 84
    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateDeviceName:Ljava/lang/String;

    const-string v1, ""

    .line 85
    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateOwnerName:Ljava/lang/String;

    .line 88
    iget v1, p1, Landroid/app/TaskInfo;->taskId:I

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 89
    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->atLeastAndroidS()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    iget v1, p1, Landroid/app/TaskInfo;->stackId:I

    :goto_0
    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 90
    invoke-static {}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/systemui/shared/recents/system/ActivityManagerWrapper;->getWindowModeFromTaskInfo(Landroid/app/TaskInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    .line 91
    iget-object v1, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 92
    iget v1, p1, Landroid/app/TaskInfo;->userId:I

    iput v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 93
    iget-wide v1, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    iput-wide v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    .line 95
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    .line 97
    iget-object p1, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    .line 98
    invoke-direct {p0, p2}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V

    .line 99
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method private updateHashCode()V
    .locals 3

    const/4 v0, 0x4

    .line 191
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    return-void
.end method

.method private updateWorldCirculateInfo(Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 121
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mIsWorldCirculate:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    .line 122
    iget-object v0, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateDeviceName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateDeviceName:Ljava/lang/String;

    .line 123
    iget-object p1, p1, Lcom/android/systemui/shared/recents/utilities/WorldCirculate$WorldCirculateInfo;->mWorldCirculateOwnerName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->worldCirculateOwnerName:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 161
    instance-of v0, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 164
    :cond_0
    check-cast p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 165
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopComponentOrBaseComponent()Landroid/content/ComponentName;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.securitycenter"

    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 171
    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    return v0
.end method

.method public setLastActiveTime(J)V
    .locals 0

    .line 133
    iput-wide p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    return-void
.end method

.method public setStackId(I)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->updateHashCode()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskKey{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", stackId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->stackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lastActiveTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", windowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->windowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isThumbnailBlur="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isScreening="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", topActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHashCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->mHashCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
