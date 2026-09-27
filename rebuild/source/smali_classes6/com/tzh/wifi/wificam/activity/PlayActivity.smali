.class public Lcom/tzh/wifi/wificam/activity/PlayActivity;
.super Lcom/tzh/wifi/wificam/base/BaseActivity;
.source "PlayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/tzh/wifi/wificam/view/base/ICaptureView;
.implements Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;
.implements Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;
.implements Lcom/tzh/wifi/wificam/view/listener/IRudderListener;
.implements Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;
.implements Lcom/tzh/wifi/wificam/view/listener/IScaleListener;
.implements Ledu/cmu/pocketsphinx/RecognitionListener;


# static fields
.field private static final STORAGE_PERMISSION_REQUEST_FOR_RECORD:I = 0x3ea

.field private static final STORAGE_PERMISSION_REQUEST_FOR_SNAP:I = 0x3eb

.field private static final TWO_MINUTES:I = 0x7d0

.field public static audio_str:Ljava/lang/String; = null

.field public static classifier:Lcom/yuan/ImageClassifier; = null

.field public static disposeFlagInit:Z = false

.field private static nStartFrameTime:J

.field public static path1:Ljava/lang/String;

.field public static path2:Ljava/lang/String;


# instance fields
.field public final MSG_SPEECH_RECOGNIZER:I

.field PathStartRunnable:Ljava/lang/Runnable;

.field ScaleRunnable:Ljava/lang/Runnable;

.field private TAG:Ljava/lang/String;

.field private bAutoPath:Z

.field public bAutoPhoto:Z

.field private bMengencyStopClick:Z

.field private bNoHeadMode:Z

.field private bOneKeyFlyClick:Z

.field private bOneKeyLandClick:Z

.field private bPlayRotate:Z

.field private bRotateActive:Z

.field private bSensorClick:Z

.field private bSpeechStart:Z

.field private bStayHighClick:Z

.field private bVideoRecord:Z

.field private bVrPlay:Z

.field private bWiFiConnect:Z

.field private btnAutoPath:Landroid/widget/ImageView;

.field private btnAutoPhoto:Landroid/widget/ImageView;

.field private btnButton:Landroid/widget/ImageView;

.field private btnChangeOrientation:Landroid/widget/ImageView;

.field private btnGensor:Landroid/widget/ImageView;

.field private btnLock:Landroid/widget/ImageView;

.field private btnMp3Switch:Landroid/widget/ImageView;

.field private btnNoHead:Landroid/widget/ImageView;

.field private btnOneKeyFly:Landroid/widget/ImageView;

.field private btnOneKeyLand:Landroid/widget/ImageView;

.field private btnOneKeyStop:Landroid/widget/ImageView;

.field private btnPhotoSnap:Landroid/widget/ImageView;

.field private btnRecord:Landroid/widget/ImageView;

.field private btnReverse:Landroid/widget/ImageView;

.field private btnRotate:Landroid/widget/ImageView;

.field private btnSpeed:Landroid/widget/ImageView;

.field private btnStayHigh:Landroid/widget/ImageView;

.field private btnVrPlay:Landroid/widget/ImageView;

.field private cameraType:I

.field private centerSlider:Lcom/tzh/wifi/wificam/view/slider/SliderVer;

.field connectivityManager:Landroid/net/ConnectivityManager;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field faceDectorRunnable:Ljava/lang/Runnable;

.field protected fly_maxRadius:I

.field handRecordDectorRunnable:Ljava/lang/Runnable;

.field handSnapDectorRunnable:Ljava/lang/Runnable;

.field private img_filter_play:Landroid/widget/ImageView;

.field private img_voice_control:Landroid/widget/ImageView;

.field private imusic:Landroid/widget/ImageView;

.field interstitial:Lcom/unad/sdk/UNADInterstitial;

.field private isMove:Z

.field private isPendingRecord:Z

.field private isPendingSnap:Z

.field private isWait:Z

.field private is_portrait:Z

.field private ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

.field private ivLoading:Landroid/widget/ImageView;

.field private ivRecordIcon:Landroid/widget/ImageView;

.field private ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

.field private ivRoundMove:Landroid/widget/ImageView;

.field private ivsmallImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

.field private leftSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

.field private listener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

.field private lyAll:Landroid/widget/RelativeLayout;

.field private lyHeadSecond:Landroid/widget/LinearLayout;

.field private lyImg:Landroid/widget/LinearLayout;

.field private lyMain:Landroid/widget/RelativeLayout;

.field private lyMengencyStop:Landroid/widget/RelativeLayout;

.field private lyRecordTime:Landroid/widget/LinearLayout;

.field private lyRudderMap:Landroid/widget/RelativeLayout;

.field private lySliderBottom:Landroid/widget/LinearLayout;

.field private lySliderCenter:Landroid/widget/RelativeLayout;

.field private mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

.field mCloseVoiceControl:Ljava/lang/Runnable;

.field mFaceTask:Lcom/hmx/recognition/FaceTask;

.field mHandler:Landroid/os/Handler;

.field mRecRunnable:Ljava/lang/Runnable;

.field private mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

.field private nAutoPhoto:I

.field private objectAnimator:Landroid/animation/ObjectAnimator;

.field pathResetRunnable:Ljava/lang/Runnable;

.field pathRunnable:Ljava/lang/Runnable;

.field private phone_lat:D

.field private phone_lng:D

.field private recTime:I

.field resetRunnable:Ljava/lang/Runnable;

.field private rewarded:Lcom/unad/sdk/UNADRewarded;

.field private rightSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

.field private screenHeight:I

.field private screenWidth:I

.field private speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

.field private tStart:J

.field private tvAutoPhoto:Landroid/widget/TextView;

.field private tvRecordTime:Landroid/widget/TextView;

.field private tvScaleValue:Landroid/widget/TextView;

.field private tvVoiceWord:Landroid/widget/TextView;

.field private zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 107
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    .line 109
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    .line 110
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivsmallImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    .line 111
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnVrPlay:Landroid/widget/ImageView;

    .line 112
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    .line 113
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnPhotoSnap:Landroid/widget/ImageView;

    .line 114
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    .line 115
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPhoto:Landroid/widget/ImageView;

    .line 116
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnReverse:Landroid/widget/ImageView;

    .line 117
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    .line 118
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    .line 119
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnMp3Switch:Landroid/widget/ImageView;

    .line 120
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_filter_play:Landroid/widget/ImageView;

    .line 121
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    .line 123
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPath:Landroid/widget/ImageView;

    .line 124
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRotate:Landroid/widget/ImageView;

    .line 125
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnNoHead:Landroid/widget/ImageView;

    .line 126
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnGensor:Landroid/widget/ImageView;

    .line 127
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    .line 128
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    .line 129
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    .line 130
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    .line 131
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    .line 132
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvScaleValue:Landroid/widget/TextView;

    .line 133
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 134
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVrPlay:Z

    .line 135
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 136
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    .line 137
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->screenWidth:I

    .line 138
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->screenHeight:I

    .line 139
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->leftSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    .line 140
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rightSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    .line 141
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->centerSlider:Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    .line 142
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    .line 143
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 144
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bOneKeyFlyClick:Z

    .line 145
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bOneKeyLandClick:Z

    .line 146
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bMengencyStopClick:Z

    .line 147
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    .line 148
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    .line 149
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    .line 150
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    .line 151
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bPlayRotate:Z

    .line 152
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyHeadSecond:Landroid/widget/LinearLayout;

    .line 153
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderBottom:Landroid/widget/LinearLayout;

    .line 154
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyImg:Landroid/widget/LinearLayout;

    .line 155
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderCenter:Landroid/widget/RelativeLayout;

    .line 156
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMengencyStop:Landroid/widget/RelativeLayout;

    .line 157
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMain:Landroid/widget/RelativeLayout;

    .line 158
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyAll:Landroid/widget/RelativeLayout;

    .line 159
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 160
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRecordTime:Landroid/widget/LinearLayout;

    .line 161
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRecordIcon:Landroid/widget/ImageView;

    .line 162
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvRecordTime:Landroid/widget/TextView;

    .line 163
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvAutoPhoto:Landroid/widget/TextView;

    .line 164
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLoading:Landroid/widget/ImageView;

    .line 165
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->imusic:Landroid/widget/ImageView;

    .line 166
    const-class v2, Lcom/tzh/wifi/wificam/activity/PlayActivity;

    invoke-static {v2}, Lcom/tzh/wifi/wificam/utils/LogUtils;->setLogger(Ljava/lang/Class;)Lcom/tzh/wifi/wificam/utils/LogUtils;

    move-result-object v2

    iput-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    .line 167
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->recTime:I

    .line 168
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    const/4 v2, 0x3

    .line 169
    iput v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nAutoPhoto:I

    .line 170
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 172
    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRudderMap:Landroid/widget/RelativeLayout;

    const-wide/16 v2, 0x0

    .line 176
    iput-wide v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tStart:J

    const/4 v0, 0x1

    .line 183
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->MSG_SPEECH_RECOGNIZER:I

    .line 185
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 192
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 193
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 195
    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->cameraType:I

    const-wide/16 v2, 0x0

    .line 204
    iput-wide v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lat:D

    .line 205
    iput-wide v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lng:D

    .line 211
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    .line 826
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$2;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRecRunnable:Ljava/lang/Runnable;

    .line 1135
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$3;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    .line 1177
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$4;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->faceDectorRunnable:Ljava/lang/Runnable;

    .line 1199
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$5;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handSnapDectorRunnable:Ljava/lang/Runnable;

    .line 1220
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$6;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$6;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handRecordDectorRunnable:Ljava/lang/Runnable;

    .line 1422
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$8;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetRunnable:Ljava/lang/Runnable;

    .line 1620
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$10;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathResetRunnable:Ljava/lang/Runnable;

    .line 1627
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$11;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$11;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathRunnable:Ljava/lang/Runnable;

    .line 1634
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$12;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->PathStartRunnable:Ljava/lang/Runnable;

    .line 1805
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$13;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$13;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ScaleRunnable:Ljava/lang/Runnable;

    .line 1876
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$14;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mCloseVoiceControl:Ljava/lang/Runnable;

    .line 1905
    const-string v0, "AdTestActivity"

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->TAG:Ljava/lang/String;

    const/16 v0, 0x320

    .line 2033
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->fly_maxRadius:I

    .line 2062
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    .line 2063
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    return-void
.end method

.method static synthetic access$000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->recTime:I

    return p0
.end method

.method static synthetic access$008(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I
    .locals 2

    .line 107
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->recTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->recTime:I

    return v0
.end method

.method static synthetic access$100(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvRecordTime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/DisplayImage;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivsmallImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/view/rudder/Rudder;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/view/View;Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0

    .line 107
    invoke-direct/range {p0 .. p5}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_start_follow(Landroid/view/View;Ljava/lang/String;Ljava/util/Collection;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvScaleValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/tzh/wifi/wificam/activity/PlayActivity;Ljava/lang/Class;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRecordIcon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/tzh/wifi/wificam/activity/PlayActivity;Ljava/lang/Class;)V
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->startActivity(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$2102(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    return p1
.end method

.method static synthetic access$2202(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I
    .locals 0

    .line 107
    iget p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nAutoPhoto:I

    return p0
.end method

.method static synthetic access$302(Lcom/tzh/wifi/wificam/activity/PlayActivity;I)I
    .locals 0

    .line 107
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nAutoPhoto:I

    return p1
.end method

.method static synthetic access$310(Lcom/tzh/wifi/wificam/activity/PlayActivity;)I
    .locals 2

    .line 107
    iget v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nAutoPhoto:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nAutoPhoto:I

    return v0
.end method

.method static synthetic access$400(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLoading:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    return-object p0
.end method

.method static synthetic access$600(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnPhotoSnap:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 107
    sget-wide v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-wide v0
.end method

.method static synthetic access$702(J)J
    .locals 0

    .line 107
    sput-wide p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-wide p0
.end method

.method static synthetic access$800(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Z
    .locals 0

    .line 107
    iget-boolean p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    return p0
.end method

.method static synthetic access$802(Lcom/tzh/wifi/wificam/activity/PlayActivity;Z)Z
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    return p1
.end method

.method static synthetic access$900(Lcom/tzh/wifi/wificam/activity/PlayActivity;)Landroid/widget/ImageView;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    return-object p0
.end method

.method private checkStoragePermission()Z
    .locals 3

    .line 2134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    return v2

    .line 2139
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    return v2

    .line 2144
    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 2145
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private choose_mp3_music()V
    .locals 3

    .line 1050
    const-string v0, "\u8d1d\u591a\u82ac\u4ea4\u54cd\u66f2"

    const-string v1, "\u672c\u5730\u97f3\u4e50"

    const-string v2, "\u591c\u7684\u94a2\u7434\u66f2.\u79cb\u4e4b\u601d\u5ff5"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$$ExternalSyntheticLambda0;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    invoke-static {p0, v0, v1}, Lcom/kongzue/dialog/v3/BottomMenu;->show(Landroidx/appcompat/app/AppCompatActivity;[Ljava/lang/String;Lcom/kongzue/dialog/interfaces/OnMenuItemClickListener;)Lcom/kongzue/dialog/v3/BottomMenu;

    move-result-object v0

    const-string v1, "\u5f55\u50cf\u80cc\u666f\u97f3\u4e50\u9009\u62e9"

    .line 1068
    invoke-virtual {v0, v1}, Lcom/kongzue/dialog/v3/BottomMenu;->setTitle(Ljava/lang/String;)Lcom/kongzue/dialog/v3/BottomMenu;

    move-result-object v0

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity$$ExternalSyntheticLambda1;-><init>()V

    .line 1083
    invoke-virtual {v0, v1}, Lcom/kongzue/dialog/v3/BottomMenu;->setOnCancelButtonClickListener(Lcom/kongzue/dialog/interfaces/OnDialogButtonClickListener;)Lcom/kongzue/dialog/v3/BottomMenu;

    return-void
.end method

.method private initUNADInterstitial()V
    .locals 3

    .line 1908
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    if-nez v0, :cond_0

    .line 1909
    new-instance v0, Lcom/unad/sdk/UNADInterstitial;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$15;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    const-string v2, "TEST_UNIT_ID_INTERSTITIAL4"

    invoke-direct {v0, p0, v2, v1}, Lcom/unad/sdk/UNADInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unad/sdk/UNADInterstitial$UNADInterstitialListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    .line 1954
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    sget-object v1, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;->DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;

    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADInterstitial;->setDownloadConfirmListener(Lcom/unad/sdk/listener/UNADDownloadConfirmListener;)V

    return-void
.end method

.method private initUNADReInterstitial()V
    .locals 3

    .line 1966
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    if-nez v0, :cond_0

    .line 1967
    new-instance v0, Lcom/unad/sdk/UNADRewarded;

    new-instance v1, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;

    invoke-direct {v1, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$16;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    const-string v2, "TEST_UNIT_ID"

    invoke-direct {v0, p0, v2, v1}, Lcom/unad/sdk/UNADRewarded;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/unad/sdk/UNADRewarded$UNADRewardedListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    sget-object v1, Lcom/tzh/wifi/wificam/download/DownloadConfirmHelper;->DOWNLOAD_CONFIRM_LISTENER:Lcom/unad/sdk/listener/UNADDownloadConfirmListener;

    invoke-virtual {v0, v1}, Lcom/unad/sdk/UNADRewarded;->setDownloadConfirmListener(Lcom/unad/sdk/listener/UNADDownloadConfirmListener;)V

    return-void
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 2122
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$choose_mp3_music$1(Lcom/kongzue/dialog/util/BaseDialog;Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x0

    .line 1084
    sput-object p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    const/4 p0, 0x0

    return p0
.end method

.method private play_sensor_click_down()V
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->sensorRegister()V

    .line 1024
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->onRegisterSensor(Lcom/tzh/wifi/wificam/presenter/listener/ISensorListener;)V

    return-void
.end method

.method private play_sensor_click_up()V
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->sensorUnregister()V

    .line 1029
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->onUnregisterSensor()V

    return-void
.end method

.method private play_start_follow(Landroid/view/View;Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;J)V"
        }
    .end annotation

    .line 1242
    new-instance p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathEvaluator;

    invoke-direct {p1}, Lcom/tzh/wifi/wificam/view/pathdraw/PathEvaluator;-><init>()V

    invoke-interface {p3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p2, p1, p3}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    .line 1243
    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1244
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1245
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private requestStoragePermissionForRecord()V
    .locals 3

    .line 2153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    .line 2154
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    .line 2155
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    if-eqz v0, :cond_0

    .line 2156
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    return-void

    .line 2158
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_down()V

    return-void

    .line 2164
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_3

    .line 2165
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    .line 2166
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    if-eqz v0, :cond_2

    .line 2167
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    return-void

    .line 2169
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_down()V

    return-void

    .line 2176
    :cond_3
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2178
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4

    .line 2180
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showPermissionSettingsDialog(Landroid/content/Context;)V

    return-void

    .line 2185
    :cond_4
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$17;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showStoragePermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    return-void
.end method

.method private requestStoragePermissionForSnap()V
    .locals 3

    .line 2208
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 2209
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    .line 2210
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 2215
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 2216
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    .line 2217
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 2223
    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2225
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2227
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showPermissionSettingsDialog(Landroid/content/Context;)V

    return-void

    .line 2232
    :cond_2
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$18;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$18;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    invoke-static {p0, v0}, Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog;->showStoragePermissionExplanation(Landroid/content/Context;Lcom/tzh/wifi/wificam/utils/PermissionExplanationDialog$PermissionExplanationCallback;)V

    return-void
.end method

.method private speechRecognizerStart()V
    .locals 2

    .line 1441
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "speechRecognizerStart"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1442
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    .line 1453
    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$9;->start()V

    return-void
.end method

.method private widget_init()V
    .locals 2

    .line 284
    new-instance v0, Lcom/tzh/wifi/wificam/utils/BmpUtils;

    invoke-direct {v0, p0, p0}, Lcom/tzh/wifi/wificam/utils/BmpUtils;-><init>(Landroid/content/Context;Lcom/tzh/wifi/wificam/presenter/listener/ITargetBitmapFixListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    const v0, 0x7f0a03af

    .line 285
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/DisplayImage;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    const v0, 0x7f0a03b7

    .line 286
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/DisplayImage;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    const v0, 0x7f0a0201

    .line 287
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnVrPlay:Landroid/widget/ImageView;

    const v1, 0x7f0a0952

    .line 288
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    const v1, 0x7f0a0950

    .line 289
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->leftSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    const v1, 0x7f0a0ae4

    .line 290
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvScaleValue:Landroid/widget/TextView;

    const v1, 0x7f0a0ae5

    .line 291
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    const v1, 0x7f0a0951

    .line 292
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rightSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    const v1, 0x7f0a094f

    .line 293
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->centerSlider:Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    const v1, 0x7f0a0731

    .line 298
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tzh/wifi/wificam/view/ZoomView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;

    .line 299
    invoke-virtual {v1, p0}, Lcom/tzh/wifi/wificam/view/ZoomView;->setDelegate(Lcom/tzh/wifi/wificam/view/listener/IScaleListener;)V

    const v1, 0x7f0a01f3

    .line 301
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f0a01f7

    .line 302
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnPhotoSnap:Landroid/widget/ImageView;

    const v1, 0x7f0a01f8

    .line 303
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    .line 304
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnVrPlay:Landroid/widget/ImageView;

    const v0, 0x7f0a01e9

    .line 305
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0a01ee

    .line 306
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    const v0, 0x7f0a01eb

    .line 307
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    const v0, 0x7f0a01e8

    .line 308
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnMp3Switch:Landroid/widget/ImageView;

    const v0, 0x7f0a0381

    .line 309
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_filter_play:Landroid/widget/ImageView;

    const v0, 0x7f0a0387

    .line 310
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v0, 0x7f0a01f2

    .line 312
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPath:Landroid/widget/ImageView;

    const/4 v1, 0x4

    .line 313
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a01f6

    .line 314
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRotate:Landroid/widget/ImageView;

    const v0, 0x7f0a01ed

    .line 315
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnGensor:Landroid/widget/ImageView;

    const v0, 0x7f0a01f9

    .line 316
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v0, 0x7f0a01f0

    .line 317
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    const v0, 0x7f0a01f1

    .line 318
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    const v0, 0x7f0a01e7

    .line 319
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    const v0, 0x7f0a0732

    .line 320
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyHeadSecond:Landroid/widget/LinearLayout;

    const v0, 0x7f0a072f

    .line 321
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderBottom:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0730

    .line 322
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderCenter:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a072e

    .line 323
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMengencyStop:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0733

    .line 324
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRecordTime:Landroid/widget/LinearLayout;

    const v0, 0x7f0a03b6

    .line 325
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRecordIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0ae3

    .line 326
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvRecordTime:Landroid/widget/TextView;

    const v0, 0x7f0a0ae2

    .line 327
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvAutoPhoto:Landroid/widget/TextView;

    .line 328
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRecordTime:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a03b0

    .line 329
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLoading:Landroid/widget/ImageView;

    const v0, 0x7f0a03b8

    .line 330
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    const v0, 0x7f0a01f5

    .line 331
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnReverse:Landroid/widget/ImageView;

    const v0, 0x7f0a0386

    .line 333
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->imusic:Landroid/widget/ImageView;

    const v0, 0x7f0a01ef

    .line 335
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnNoHead:Landroid/widget/ImageView;

    const v0, 0x7f0a037e

    .line 338
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyImg:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0736

    .line 339
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMain:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0073

    .line 340
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyAll:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a03df

    .line 341
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tzh/wifi/wificam/view/DisplayImage;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivsmallImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    const v0, 0x7f0a01e3

    .line 343
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnChangeOrientation:Landroid/widget/ImageView;

    .line 357
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->leftSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getLeftTune(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/tzh/wifi/wificam/view/slider/SliderHor;->addSliderListener(Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;I)V

    .line 358
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rightSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getRightTune(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/tzh/wifi/wificam/view/slider/SliderHor;->addSliderListener(Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;I)V

    .line 359
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->centerSlider:Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->getCenterTune(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->addSliderListener(Lcom/tzh/wifi/wificam/view/slider/listener/ISliderListener;I)V

    .line 360
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0, p0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->registerListener(Lcom/tzh/wifi/wificam/view/listener/IRudderListener;)V

    .line 361
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->invalidateValue()V

    .line 363
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    const v1, 0x7f0f007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 365
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_lock_click_up()V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_lock_click_down()V

    .line 368
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    const v1, 0x7f0f007c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 371
    :goto_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bButtonClick:Z

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    const v1, 0x7f0f0065

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 373
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_button_click_down()V

    goto :goto_1

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    const v1, 0x7f0f0064

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_button_click_up()V

    .line 379
    :goto_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    if-nez v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 382
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 383
    :cond_3
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 384
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bfilter_playClick:Z

    if-eqz v0, :cond_5

    .line 388
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_filter_click_down()V

    return-void

    .line 390
    :cond_5
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_filter_click_up()V

    return-void
.end method


# virtual methods
.method public OnBitmapFixed(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1341
    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity$7;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public OnZoomEnd()V
    .locals 4

    .line 1802
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ScaleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public OnZoomSet(I)V
    .locals 4

    .line 1794
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvScaleValue:Landroid/widget/TextView;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%d X"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1795
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    if-eqz v0, :cond_0

    .line 1796
    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->setScale(I)V

    :cond_0
    return-void
.end method

.method public OnZoomStart()V
    .locals 2

    .line 1789
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvScaleValue:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public cameraType(I)V
    .locals 0

    .line 1323
    iput p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->cameraType:I

    return-void
.end method

.method public closeVoiceControl()V
    .locals 4

    .line 1868
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1869
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 1870
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1871
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1872
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mCloseVoiceControl:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public connected()V
    .locals 1

    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    return-void
.end method

.method public disconnected()V
    .locals 1

    const/4 v0, 0x0

    .line 1303
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    .line 1304
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    return-void
.end method

.method protected isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 2078
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const-wide/16 v6, -0x7d0

    cmp-long v4, v1, v6

    if-gez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    const-wide/16 v6, 0x0

    cmp-long v8, v1, v6

    if-lez v8, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-eqz v3, :cond_4

    return v0

    :cond_4
    if-eqz v4, :cond_5

    return v5

    .line 2095
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    if-lez v2, :cond_6

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-gez v2, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    const/16 v6, 0xc8

    if-le v2, v6, :cond_8

    const/4 v2, 0x1

    goto :goto_5

    :cond_8
    const/4 v2, 0x0

    .line 2101
    :goto_5
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz v4, :cond_9

    return v0

    :cond_9
    if-eqz v1, :cond_a

    if-nez v3, :cond_a

    return v0

    :cond_a
    if-eqz v1, :cond_b

    if-nez v2, :cond_b

    if-eqz p1, :cond_b

    return v0

    :cond_b
    return v5
.end method

.method synthetic lambda$choose_mp3_music$0$com-tzh-wifi-wificam-activity-PlayActivity(Ljava/lang/String;I)V
    .locals 1

    .line 0
    if-nez p2, :cond_0

    .line 1054
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/1.mp3"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 1058
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getFilesDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/2.mp3"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1062
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1063
    const-string v0, "audio/*"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1064
    const-string v0, "android.intent.category.OPENABLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {p0, p2, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public loadIAD()V
    .locals 1

    .line 1887
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->initUNADInterstitial()V

    .line 1888
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADInterstitial;->loadAD()V

    return-void
.end method

.method public loadReIAD()V
    .locals 1

    .line 1959
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->initUNADReInterstitial()V

    .line 1960
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADRewarded;->loadAD()V

    return-void
.end method

.method public locationChange(DDD)V
    .locals 0

    .line 2038
    invoke-static {p3, p4, p5, p6}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->isInArea(DD)Z

    move-result p1

    if-nez p1, :cond_0

    .line 2039
    iput-wide p3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lat:D

    .line 2040
    iput-wide p5, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lng:D

    return-void

    .line 2043
    :cond_0
    invoke-static {p3, p4, p5, p6}, Lcom/tzh/wifi/wificam/utils/GPSUtil;->gps84_To_bd09(DD)[D

    move-result-object p1

    const/4 p2, 0x0

    .line 2044
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lat:D

    const/4 p2, 0x1

    .line 2045
    aget-wide p2, p1, p2

    iput-wide p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->phone_lng:D

    return-void
.end method

.method public onAccNotify(II)V
    .locals 1

    const/16 v0, 0x66

    if-eq p2, v0, :cond_0

    const/16 v0, 0x99

    if-ne p2, v0, :cond_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    :cond_1
    int-to-byte p2, p2

    .line 1376
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    int-to-byte p2, p2

    int-to-byte p1, p1

    invoke-virtual {v0, p2, p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_AccNotify(BB)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1093
    invoke-super {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 1098
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1099
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/FileChooseUtil;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/FileChooseUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tzh/wifi/wificam/utils/FileChooseUtil;->getChooseFileResultPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    .line 1100
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u9009\u62e9\u6587\u4ef6\u8fd4\u56de\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "2222"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u9009\u62e9\u7684\u97f3\u4e50\u8def\u5f84\u662f\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p2, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1763
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onBackPressed()V

    const v0, 0x10a0002

    const v1, 0x10a0003

    .line 1764
    invoke-virtual {p0, v0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onBeginningOfSpeech()V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "speechRecognizerUtil:onBeginningOfSpeech:"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 398
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "###onClick"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01f2

    const v2, 0x7f0f00ba

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01f6

    if-eq v0, v1, :cond_0

    .line 400
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01ef

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01ec

    if-eq v0, v1, :cond_0

    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01ed

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01f9

    if-eq v0, v1, :cond_0

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01f0

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01f1

    if-eq v0, v1, :cond_0

    .line 403
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01e7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    if-eqz v0, :cond_1

    .line 404
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 405
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 406
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 407
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    .line 411
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0201

    const/4 v1, 0x1

    if-eq p1, v0, :cond_24

    const v0, 0x7f0a0381

    if-eq p1, v0, :cond_22

    const v0, 0x7f0a03df

    if-eq p1, v0, :cond_21

    packed-switch p1, :pswitch_data_0

    const-string v0, "Please accept privacy policy first"

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_2

    .line 759
    :pswitch_0
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    if-nez p1, :cond_6

    .line 760
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    if-eqz p1, :cond_2

    .line 761
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPath:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 763
    :cond_2
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bPlayRotate:Z

    if-eqz p1, :cond_3

    .line 764
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRotate:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 766
    :cond_3
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    if-eqz p1, :cond_4

    .line 767
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnNoHead:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 769
    :cond_4
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    if-eqz p1, :cond_5

    .line 770
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnGensor:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    .line 772
    :cond_5
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 773
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v0, 0x7f0f00bb

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 774
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 775
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerStart()V

    return-void

    .line 777
    :cond_6
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 778
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 779
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 780
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 782
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    return-void

    .line 728
    :pswitch_1
    const-class p1, Lcom/tzh/wifi/wificam/activity/MusicActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    .line 676
    :pswitch_2
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    if-eqz p1, :cond_7

    .line 677
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 678
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 679
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_up()V

    return-void

    .line 681
    :cond_7
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 682
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v0, 0x7f0f0073

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 683
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_down()V

    return-void

    .line 491
    :pswitch_3
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_speed_click_down()V

    return-void

    .line 495
    :pswitch_4
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->playSound(I)V

    .line 496
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    if-nez p1, :cond_8

    .line 499
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 497
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 500
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 504
    :cond_8
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 505
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 509
    :cond_9
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->checkStoragePermission()Z

    move-result p1

    if-nez p1, :cond_a

    .line 510
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->requestStoragePermissionForSnap()V

    return-void

    .line 513
    :cond_a
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    if-ne p1, v1, :cond_b

    .line 514
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 516
    :cond_b
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 632
    :pswitch_5
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bPlayRotate:Z

    if-eqz p1, :cond_c

    .line 633
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_rotate_click_up()V

    .line 634
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onUnregisterRotate()V

    return-void

    .line 636
    :cond_c
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onRegisterRotate()V

    .line 637
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_rotate_click_down()V

    return-void

    .line 554
    :pswitch_6
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    if-nez p1, :cond_d

    .line 557
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 555
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 558
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 572
    :cond_d
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraRoate()I

    return-void

    .line 463
    :pswitch_7
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->onBackPressed()V

    return-void

    .line 438
    :pswitch_8
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    if-nez p1, :cond_e

    .line 441
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 439
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 446
    :cond_e
    invoke-static {p0}, Lcom/tzh/wifi/wificam/view/dialog/PrivacyDialog;->isPrivacyAccepted(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    .line 447
    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 451
    :cond_f
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->checkStoragePermission()Z

    move-result p1

    if-nez p1, :cond_10

    .line 452
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->requestStoragePermissionForRecord()V

    return-void

    .line 455
    :cond_10
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    if-eqz p1, :cond_11

    .line 456
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    return-void

    .line 458
    :cond_11
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_down()V

    return-void

    .line 613
    :pswitch_9
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    if-eqz p1, :cond_12

    .line 616
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 614
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 617
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 620
    :cond_12
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    if-eqz p1, :cond_13

    .line 621
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    .line 622
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPath:Landroid/widget/ImageView;

    const v0, 0x7f0f0079

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_path_click_up()V

    return-void

    .line 625
    :cond_13
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    .line 626
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPath:Landroid/widget/ImageView;

    const v0, 0x7f0f007a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 627
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_path_click_down()V

    return-void

    .line 702
    :pswitch_a
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyLand()V

    return-void

    .line 689
    :pswitch_b
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyFly()V

    return-void

    .line 643
    :pswitch_c
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    if-eqz p1, :cond_14

    .line 644
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    .line 645
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnNoHead:Landroid/widget/ImageView;

    const v0, 0x7f0f007d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 647
    :cond_14
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    .line 648
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnNoHead:Landroid/widget/ImageView;

    const v0, 0x7f0f007e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    :goto_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bNoHeadMode:Z

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_NoHeadModle(Z)V

    return-void

    .line 577
    :pswitch_d
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    if-eqz p1, :cond_15

    .line 580
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strGsensorEnable:Ljava/lang/String;

    .line 578
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 581
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 585
    :cond_15
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    if-eqz p1, :cond_16

    .line 586
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v4, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    .line 587
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    const v0, 0x7f0f007b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 588
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_lock_click_up()V

    .line 589
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Resume()V

    return-void

    .line 591
    :cond_16
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    .line 592
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_lock_click_down()V

    .line 593
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->invalidateValue()V

    .line 595
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Start()V

    .line 596
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnLock:Landroid/widget/ImageView;

    const v0, 0x7f0f007c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 655
    :pswitch_e
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    if-nez p1, :cond_17

    .line 657
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strLockDown:Ljava/lang/String;

    .line 656
    invoke-static {p0, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 658
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 661
    :cond_17
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPath:Z

    if-eqz p1, :cond_18

    goto/16 :goto_2

    .line 664
    :cond_18
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    if-eqz p1, :cond_19

    .line 665
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    .line 666
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnGensor:Landroid/widget/ImageView;

    const v0, 0x7f0f006e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_sensor_click_up()V

    return-void

    .line 669
    :cond_19
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSensorClick:Z

    .line 670
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_sensor_click_down()V

    .line 671
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnGensor:Landroid/widget/ImageView;

    const v0, 0x7f0f006f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 546
    :pswitch_f
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->playSound(I)V

    .line 547
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->centerSlider:Lcom/tzh/wifi/wificam/view/slider/SliderVer;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/slider/SliderVer;->ISliderCheckOut()V

    .line 548
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->leftSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/slider/SliderHor;->ISliderCheckOut()V

    .line 549
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rightSlider:Lcom/tzh/wifi/wificam/view/slider/SliderHor;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/slider/SliderHor;->ISliderCheckOut()V

    .line 550
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_CheckOutFlg()V

    return-void

    .line 601
    :pswitch_10
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bButtonClick:Z

    if-eqz p1, :cond_1a

    .line 602
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    const v0, 0x7f0f0064

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 603
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v4, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bButtonClick:Z

    .line 604
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_button_click_up()V

    return-void

    .line 606
    :cond_1a
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnButton:Landroid/widget/ImageView;

    const v0, 0x7f0f0065

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 607
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bButtonClick:Z

    .line 608
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_button_click_down()V

    return-void

    .line 433
    :pswitch_11
    const-class p1, Lcom/tzh/wifi/wificam/activity/PlayBackActivity;

    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->startActivity(Ljava/lang/Class;)V

    return-void

    .line 468
    :pswitch_12
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    if-nez p1, :cond_1b

    .line 471
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 469
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 476
    :cond_1b
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    if-eqz p1, :cond_1c

    .line 477
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    .line 478
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_auto_photo_up()V

    .line 479
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0f005e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    .line 481
    :cond_1c
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bAutoPhoto:Z

    .line 482
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 483
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_auto_photo_down()V

    .line 484
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnAutoPhoto:Landroid/widget/ImageView;

    const v0, 0x7f0f005f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-void

    .line 746
    :pswitch_13
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    const-string v0, "music_off"

    invoke-static {v0}, Lcom/tzh/wifi/wificam/bean/MessageWrap;->getInstance(Ljava/lang/String;)Lcom/tzh/wifi/wificam/bean/MessageWrap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->postSticky(Ljava/lang/Object;)V

    .line 747
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->stop_music()V

    return-void

    .line 714
    :pswitch_14
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyMergency()V

    return-void

    .line 797
    :pswitch_15
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    if-eqz p1, :cond_1d

    .line 798
    invoke-virtual {p0, v4}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setRequestedOrientation(I)V

    .line 799
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    goto :goto_1

    .line 801
    :cond_1d
    invoke-virtual {p0, v1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setRequestedOrientation(I)V

    .line 802
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    .line 805
    :goto_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->setIs_portrait(Z)V

    return-void

    .line 522
    :pswitch_16
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    if-nez p1, :cond_1e

    .line 525
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoConnect:Ljava/lang/String;

    .line 523
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 526
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 529
    :cond_1e
    iget p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->cameraType:I

    if-ne p1, v1, :cond_1f

    .line 532
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object p1

    iget-object p1, p1, Lcom/tzh/wifi/wificam/utils/StringUtils;->strNoSupport:Ljava/lang/String;

    .line 530
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 533
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 536
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 537
    iget-wide v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tStart:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long p1, v2, v4

    if-ltz p1, :cond_20

    .line 538
    invoke-static {}, Lcom/tzh/wifi/utils/Camera;->iCameraSwitch()I

    .line 539
    iput-wide v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tStart:J

    .line 540
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v0, "### camera switch!"

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_20
    :goto_2
    return-void

    .line 414
    :cond_21
    const-string p1, "baiMap"

    const-string v0, "onImageLayoutClick: "

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivsmallImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-virtual {p1, v3}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setVisibility(I)V

    return-void

    .line 733
    :cond_22
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget-boolean p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bfilter_playClick:Z

    if-eqz p1, :cond_23

    .line 734
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v4, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bfilter_playClick:Z

    .line 735
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_filter_click_up()V

    return-void

    .line 737
    :cond_23
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iput-boolean v1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bfilter_playClick:Z

    .line 738
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_filter_click_down()V

    return-void

    .line 421
    :cond_24
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVrPlay:Z

    if-eqz p1, :cond_25

    .line 422
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVrPlay:Z

    .line 423
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_vr_click_up()V

    return-void

    .line 426
    :cond_25
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVrPlay:Z

    .line 427
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_vr_click_down()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a01e2
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a01e7
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a0386
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 215
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 216
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 218
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {v0, v2}, Lcom/tzh/wifi/wificam/WiFiApp$3$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/Network;)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v2}, Landroid/net/ConnectivityManager;->setProcessDefaultNetwork(Landroid/net/Network;)Z

    .line 222
    :goto_0
    new-instance v0, Lcom/tzh/wifi/wificam/utils/PathUtils;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;-><init>(Landroid/content/Context;)V

    .line 223
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f0d0020

    .line 224
    invoke-virtual {p0, v0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setContentView(I)V

    .line 226
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 227
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->screenWidth:I

    .line 228
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->screenHeight:I

    .line 232
    new-instance v0, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-direct {v0, p0, p0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;-><init>(Landroid/content/Context;Ledu/cmu/pocketsphinx/RecognitionListener;)V

    iput-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    .line 234
    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path1:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 235
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/PathUtils;

    move-result-object v0

    const-string v1, "hand.param"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/PathUtils;->copyFilesFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path1:Ljava/lang/String;

    .line 237
    :cond_1
    sget-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path2:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 238
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/PathUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/PathUtils;

    move-result-object v0

    const-string v1, "hand.bin"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/PathUtils;->copyFilesFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->path2:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    .line 243
    const-string v0, "isPortrait"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    .line 244
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 246
    invoke-virtual {p0, p1}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->setRequestedOrientation(I)V

    .line 249
    :goto_1
    invoke-direct {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->widget_init()V

    .line 250
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->readConfig()V

    .line 252
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/tzh/wifi/wificam/activity/PlayActivity$1;

    invoke-direct {v0, p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity$1;-><init>(Lcom/tzh/wifi/wificam/activity/PlayActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1746
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onDestroy()V

    .line 1747
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->writeConfig()V

    .line 1748
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onDestroy()V

    .line 1749
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_auto_photo_up()V

    .line 1752
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->disattachView()V

    .line 1753
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Stop()V

    return-void
.end method

.method public onDirNotify(III)V
    .locals 7

    const/4 v0, -0x1

    const-wide/16 v1, 0x1f4

    const/4 v3, 0x6

    const/4 v4, 0x1

    if-ne p3, v4, :cond_0

    .line 1382
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    int-to-byte p2, p2

    invoke-virtual {p1, v0, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_DirNotify(BB)V

    .line 1383
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    if-nez p1, :cond_3

    .line 1384
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 1385
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetRotate(Z)V

    .line 1386
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ne p3, v5, :cond_1

    .line 1391
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    int-to-byte p2, p2

    invoke-virtual {p1, v6, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_DirNotify(BB)V

    .line 1392
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    if-nez p1, :cond_3

    .line 1393
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 1394
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetRotate(Z)V

    .line 1395
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    const/4 v5, 0x3

    if-ne p3, v5, :cond_2

    .line 1400
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p2

    int-to-byte p1, p1

    invoke-virtual {p2, p1, v6}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_DirNotify(BB)V

    .line 1401
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    if-nez p1, :cond_3

    .line 1402
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 1403
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetRotate(Z)V

    .line 1404
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_2
    const/4 v5, 0x4

    if-ne p3, v5, :cond_4

    .line 1409
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p2

    int-to-byte p1, p1

    invoke-virtual {p2, p1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_DirNotify(BB)V

    .line 1410
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    if-nez p1, :cond_3

    .line 1411
    iput-boolean v4, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 1412
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetRotate(Z)V

    .line 1413
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return-void

    .line 1418
    :cond_4
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p3

    int-to-byte p1, p1

    int-to-byte p2, p2

    invoke-virtual {p3, p1, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_DirNotify(BB)V

    return-void
.end method

.method public onEndOfSpeech()V
    .locals 2

    .line 1464
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "speechRecognizerUtil:onEndOfSpeech:"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->switchSearch()V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 3

    .line 1596
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onError:onResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onFaceDector()V
    .locals 2

    .line 1292
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, "you have dector a face"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onGSensorChange(II)V
    .locals 1

    .line 1286
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0, p1, p2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onSensorNotify(II)V

    return-void
.end method

.method public onGetMessage(Lcom/tzh/wifi/wificam/bean/MessageWrap;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1777
    iget-object v0, p1, Lcom/tzh/wifi/wificam/bean/MessageWrap;->message:Ljava/lang/String;

    const-string v1, "music_on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1779
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnMp3Switch:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1780
    :cond_0
    iget-object p1, p1, Lcom/tzh/wifi/wificam/bean/MessageWrap;->message:Ljava/lang/String;

    const-string v0, "music_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1782
    sput-object p1, Lcom/tzh/wifi/wificam/activity/PlayActivity;->audio_str:Ljava/lang/String;

    .line 1783
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnMp3Switch:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onPartialResult(Ledu/cmu/pocketsphinx/Hypothesis;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1472
    :cond_0
    invoke-virtual {p1}, Ledu/cmu/pocketsphinx/Hypothesis;->getHypstr()Ljava/lang/String;

    move-result-object p1

    .line 1473
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speechRecognizerUtil:onPartialResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onPathFollowNotify(ZLjava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection<",
            "Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1651
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1652
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1654
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1655
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1657
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->PathStartRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 1700
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onPause()V

    return-void
.end method

.method public onPointerCaptureChanged(Z)V
    .locals 0

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    .line 2252
    invoke-super {p0, p1, p2, p3}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/16 p2, 0x3ea

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 2274
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_2

    aget p1, p3, v0

    if-nez p1, :cond_2

    .line 2276
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    if-eqz p1, :cond_5

    .line 2277
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    .line 2278
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object p1

    iget p1, p1, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 2279
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 2281
    :cond_1
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareSnap(Z)V

    return-void

    .line 2286
    :cond_2
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingSnap:Z

    .line 2287
    const-string p1, "\u9700\u8981\u5b58\u50a8\u6743\u9650\u624d\u80fd\u62cd\u7167"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 2256
    :cond_3
    array-length p1, p3

    if-lez p1, :cond_6

    aget p1, p3, v0

    if-nez p1, :cond_6

    .line 2258
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    if-eqz p1, :cond_5

    .line 2259
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    .line 2260
    iget-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    if-eqz p1, :cond_4

    .line 2261
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    return-void

    .line 2263
    :cond_4
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_down()V

    :cond_5
    :goto_0
    return-void

    .line 2268
    :cond_6
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isPendingRecord:Z

    .line 2269
    const-string p1, "\u9700\u8981\u5b58\u50a8\u6743\u9650\u624d\u80fd\u5f55\u50cf"

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onResult(Ledu/cmu/pocketsphinx/Hypothesis;)V
    .locals 13

    .line 1481
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    if-eqz p1, :cond_1b

    .line 1496
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 1499
    :cond_1
    invoke-virtual {p1}, Ledu/cmu/pocketsphinx/Hypothesis;->getHypstr()Ljava/lang/String;

    move-result-object p1

    .line 1501
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "FORWARD"

    const-string v2, "STOP"

    const-string v3, "LEFT"

    const-string v4, "LAND"

    const-string v5, "FLY"

    const-string v6, "BACKWARD"

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "BIKEWARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v10, 0x15

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "RIGHI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v10, 0x14

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "RAYIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v10, 0x13

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "RAIYT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v10, 0x12

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v10, 0x11

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v10, 0x10

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "RIYT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v10, 0xf

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "RAYT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v10, 0xe

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "RAIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v10, 0xd

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0xc

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v10, 0xb

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "\u964d\u843d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v10, 0xa

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "\u8d77\u98de"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0x9

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "\u5411\u5de6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v10, 0x8

    goto :goto_0

    :sswitch_e
    const-string v0, "\u5411\u540e"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_f
    const-string v0, "\u5411\u53f3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_10
    const-string v0, "\u5411\u524d"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_11
    const-string v0, "\u505c\u6b62"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_12
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_0

    :cond_14
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_13
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_0

    :cond_15
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_14
    const-string v0, "BACKWALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto :goto_0

    :cond_16
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_15
    const-string v0, "RIGHTY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_0

    :cond_17
    const/4 v10, 0x0

    :goto_0
    const-wide/16 v11, 0x7d0

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_1

    .line 1572
    :pswitch_0
    invoke-static {p0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1573
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    if-nez v0, :cond_18

    goto/16 :goto_1

    .line 1576
    :cond_18
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyLand()V

    goto/16 :goto_1

    .line 1530
    :pswitch_1
    invoke-static {p0, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1531
    iput-boolean v8, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 1532
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 1533
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    div-int/2addr v2, v7

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v9}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1536
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1504
    :pswitch_2
    invoke-static {p0, v1, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1505
    iput-boolean v8, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 1506
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 1507
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v3, v3, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    div-int/2addr v3, v7

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v9}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1510
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 1582
    :pswitch_3
    invoke-static {p0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1583
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    if-nez v0, :cond_19

    goto/16 :goto_1

    .line 1586
    :cond_19
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyMergency()V

    goto/16 :goto_1

    .line 1560
    :pswitch_4
    invoke-static {p0, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1561
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    if-nez v0, :cond_1a

    .line 1562
    iput-boolean v8, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 1563
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v1, 0x7f0f0073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1564
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_down()V

    .line 1566
    :cond_1a
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_OneKeyFly()V

    goto :goto_1

    .line 1518
    :pswitch_5
    invoke-static {p0, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1519
    iput-boolean v8, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 1520
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 1521
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v3, v3, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    div-int/2addr v3, v7

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v9}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1524
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 1548
    :pswitch_6
    const-string v0, "RIGHT"

    invoke-static {p0, v0, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1549
    iput-boolean v8, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 1550
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccDefault:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->AccCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWithAccRudder(II)V

    .line 1551
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v1, v0, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->rudderLen:I

    div-int/2addr v2, v7

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v2, v2, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2, v9}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1554
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->resetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1590
    :goto_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "speechRecognizerUtil:onResult:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1b
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6fec8a23 -> :sswitch_15
        -0x52df44cf -> :sswitch_14
        -0x52df441d -> :sswitch_13
        0x11053 -> :sswitch_12
        0xa2686 -> :sswitch_11
        0xa805c -> :sswitch_10
        0xa8202 -> :sswitch_f
        0xa821d -> :sswitch_e
        0xa8bf5 -> :sswitch_d
        0x11ba47 -> :sswitch_c
        0x12b790 -> :sswitch_b
        0x2389eb -> :sswitch_a
        0x239807 -> :sswitch_9
        0x26439a -> :sswitch_8
        0x26458a -> :sswitch_7
        0x266392 -> :sswitch_6
        0x270002 -> :sswitch_5
        0x26f1ea5 -> :sswitch_4
        0x4a23095 -> :sswitch_3
        0x4a26ab5 -> :sswitch_2
        0x4a5c9f1 -> :sswitch_1
        0x61a4cddd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .line 1664
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onResume()V

    .line 1665
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->bLockClick:Z

    if-eqz v0, :cond_0

    .line 1666
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Start()V

    goto :goto_0

    .line 1668
    :cond_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_Resume()V

    .line 1670
    :goto_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->attachView(Lcom/tzh/wifi/wificam/view/base/ICaptureView;)V

    const/4 v0, 0x0

    .line 1671
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    .line 1672
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    if-eqz v1, :cond_1

    .line 1673
    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->start()V

    .line 1675
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v2, v1, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget-object v3, v3, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->DirCenterDef:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1677
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 1690
    :cond_2
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1691
    iput-boolean v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    goto :goto_1

    .line 1692
    :cond_3
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 1693
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    .line 1695
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->setIs_portrait(Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 2295
    invoke-super {p0, p1}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2296
    const-string v0, "isPortrait"

    iget-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->is_portrait:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSliderNotify(Landroid/view/View;I)V
    .locals 3

    .line 1251
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0950

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0951

    if-eq v0, v1, :cond_0

    .line 1252
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a094f

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1253
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 1254
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1255
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1256
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1257
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    .line 1260
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1268
    :pswitch_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "right slider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1269
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    int-to-byte v1, p2

    invoke-virtual {p1, v0, v1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetTune(BBB)V

    .line 1270
    invoke-static {p0, p2}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeRightTune(Landroid/content/Context;I)V

    goto :goto_0

    .line 1262
    :pswitch_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "left slider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1263
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    int-to-byte v1, p2

    invoke-virtual {p1, v1, v0, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetTune(BBB)V

    .line 1264
    invoke-static {p0, p2}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeLeftTune(Landroid/content/Context;I)V

    goto :goto_0

    .line 1274
    :pswitch_2
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "center slider:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1275
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    int-to-byte v1, p2

    invoke-virtual {p1, v0, v0, v1}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetTune(BBB)V

    .line 1276
    invoke-static {p0, p2}, Lcom/tzh/wifi/wificam/utils/ConfigUtils;->writeCenterTune(Landroid/content/Context;I)V

    .line 1280
    :goto_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->invalidateValue()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a094f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .line 1770
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStart()V

    .line 1771
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 1707
    invoke-super {p0}, Lcom/tzh/wifi/wificam/base/BaseActivity;->onStop()V

    .line 1708
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1711
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->cameraType:I

    .line 1712
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1713
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1714
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1720
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_record_click_up()V

    .line 1721
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    if-eqz v1, :cond_1

    .line 1722
    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->stop()V

    .line 1724
    :cond_1
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ScaleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1726
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handSnapDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1727
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->handRecordDectorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1728
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mCloseVoiceControl:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1729
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1730
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1731
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLoading:Landroid/widget/ImageView;

    const v3, 0x7f0f004a

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1732
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 1734
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;

    invoke-virtual {v1}, Lcom/tzh/wifi/wificam/view/ZoomView;->dealWithrest()V

    .line 1735
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->setScale(I)V

    .line 1736
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 1737
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1738
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1739
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1740
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    :cond_2
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .line 1602
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->logUtils:Lcom/tzh/wifi/wificam/utils/LogUtils;

    const-string v1, " ###\u64cd\u4f5c\u8d85\u65f6"

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method play_auto_photo_down()V
    .locals 2

    .line 983
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvAutoPhoto:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method play_auto_photo_up()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvAutoPhoto:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method play_button_click_down()V
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 929
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->imusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 930
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_filter_play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnChangeOrientation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method play_button_click_up()V
    .locals 2

    .line 939
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->imusic:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 941
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_filter_play:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 942
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnChangeOrientation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method play_filter_click_down()V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/ZoomView;->setVisibility(I)V

    return-void
.end method

.method play_filter_click_up()V
    .locals 2

    .line 957
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/ZoomView;->setVisibility(I)V

    .line 958
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->zoomView:Lcom/tzh/wifi/wificam/view/ZoomView;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/ZoomView;->dealWithrest()V

    return-void
.end method

.method play_high_click_down()V
    .locals 2

    .line 845
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 846
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 847
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 848
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 849
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 850
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 851
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onRegisterStayHighMode()V

    return-void
.end method

.method play_high_click_up()V
    .locals 2

    .line 855
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 856
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 857
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 858
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyFly:Landroid/widget/ImageView;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 859
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyLand:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 860
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnOneKeyStop:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 861
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onUnregisterStayHighMode()V

    return-void
.end method

.method play_lock_click_down()V
    .locals 3

    .line 883
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyHeadSecond:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 884
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 885
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderCenter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 886
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMengencyStop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setVisibility(I)V

    .line 888
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 889
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 890
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 891
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v1, 0x7f0f0073

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_down()V

    return-void
.end method

.method play_lock_click_up()V
    .locals 4

    const/4 v0, 0x0

    .line 899
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isMove:Z

    .line 900
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 901
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnStayHigh:Landroid/widget/ImageView;

    const v2, 0x7f0f0072

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 902
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_up()V

    .line 905
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyHeadSecond:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 906
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderBottom:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 907
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lySliderCenter:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 908
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyMengencyStop:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 909
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v1, v2}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->setVisibility(I)V

    .line 910
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 911
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 912
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bSpeechStart:Z

    .line 913
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->img_voice_control:Landroid/widget/ImageView;

    const v1, 0x7f0f00ba

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 914
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvVoiceWord:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 915
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->speechRecognizerUtil:Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/model/speech/SpeechRecognizerUtil;->stop()V

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 919
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 920
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method play_path_click_down()V
    .locals 1

    .line 965
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onPathFollowRegister()V

    return-void
.end method

.method play_path_click_up()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->objectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 973
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onPathFollowUnregister()V

    .line 976
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public play_record_click_down()V
    .locals 4

    const/4 v0, 0x1

    .line 1109
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    .line 1110
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvRecordTime:Landroid/widget/TextView;

    const-string v2, "00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1111
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRecordIcon:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1112
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRecordTime:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1113
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    const v3, 0x7f0f0084

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1114
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v1

    iget v1, v1, Lcom/tzh/wifi/wificam/WiFiApp;->bRotate:I

    if-ne v1, v0, :cond_0

    .line 1115
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareRecord(Z)V

    goto :goto_0

    .line 1117
    :cond_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->prepareRecord(Z)V

    .line 1119
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRecRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public play_record_click_up()V
    .locals 4

    const/4 v0, 0x0

    .line 1124
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    .line 1125
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->lyRecordTime:Landroid/widget/LinearLayout;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1126
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->tvRecordTime:Landroid/widget/TextView;

    const-string v3, "00:00"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1127
    iput v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->recTime:I

    .line 1128
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRecordIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1129
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    const v1, 0x7f0f0083

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1130
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->stopRecord()V

    .line 1131
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRecRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public play_rotate_click_down()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onRegisterRotate()V

    .line 1034
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRotate:Landroid/widget/ImageView;

    const v1, 0x7f0f008b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x1

    .line 1035
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bPlayRotate:Z

    return-void
.end method

.method public play_rotate_click_up()V
    .locals 3

    .line 1040
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onUnregisterRotate()V

    const/4 v0, 0x0

    .line 1041
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bPlayRotate:Z

    .line 1042
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bRotateActive:Z

    .line 1043
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRotate:Landroid/widget/ImageView;

    const v2, 0x7f0f008a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1044
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->ICmd_SetRotate(Z)V

    return-void
.end method

.method play_speed_click_down()V
    .locals 3

    .line 1000
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1001
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iput v1, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    .line 1002
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/16 v0, 0x3c

    .line 1003
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    .line 1004
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    const/16 v0, 0xa

    .line 1005
    sput-byte v0, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    goto :goto_0

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/4 v2, 0x2

    if-ne v0, v1, :cond_1

    .line 1007
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iput v2, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/16 v0, 0x80

    .line 1008
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    .line 1009
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    const/16 v0, 0xf

    .line 1010
    sput-byte v0, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    .line 1011
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0092

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    iget v0, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    if-ne v0, v2, :cond_2

    .line 1013
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->getApp()Lcom/tzh/wifi/wificam/WiFiApp;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Lcom/tzh/wifi/wificam/WiFiApp;->nSpeed:I

    const/16 v0, 0x28

    .line 1014
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_H_VALUE:I

    .line 1015
    sput v0, Lcom/tzh/wifi/wificam/utils/Constants;->MAX_DIR_O_VALUE:I

    const/4 v0, 0x6

    .line 1016
    sput-byte v0, Lcom/tzh/wifi/wificam/utils/Constants;->CUR_OFFSET_VALUE:B

    .line 1017
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnSpeed:Landroid/widget/ImageView;

    const v1, 0x7f0f0090

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->onNotifySpeed()V

    return-void
.end method

.method play_vr_click_down()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setVisibility(I)V

    return-void
.end method

.method play_vr_click_up()V
    .locals 2

    .line 876
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRightImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->setVisibility(I)V

    return-void
.end method

.method public readConfig()V
    .locals 1

    const/4 v0, 0x1

    .line 267
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bStayHighClick:Z

    .line 268
    invoke-virtual {p0}, Lcom/tzh/wifi/wificam/activity/PlayActivity;->play_high_click_down()V

    return-void
.end method

.method public reciveBitmap(IILandroid/graphics/Bitmap;)V
    .locals 1

    const/4 p1, 0x1

    .line 1328
    iput-boolean p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bWiFiConnect:Z

    .line 1330
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->takeSnap(Landroid/graphics/Bitmap;)V

    .line 1331
    invoke-static {p0}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/tzh/wifi/wificam/presenter/WiFiPresenter;->videoTakeSnap(Landroid/graphics/Bitmap;)V

    .line 1332
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getWidth()I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-virtual {p1}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getHeight()I

    move-result p1

    if-eqz p1, :cond_0

    .line 1333
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    iget-object p2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-virtual {p2}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getWidth()I

    move-result p2

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivLeftImage:Lcom/tzh/wifi/wificam/view/DisplayImage;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/DisplayImage;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->setImageParam(II)V

    .line 1334
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mBmpUtils:Lcom/tzh/wifi/wificam/utils/BmpUtils;

    invoke-virtual {p1, p3}, Lcom/tzh/wifi/wificam/utils/BmpUtils;->push(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public resetHandRect()V
    .locals 3

    .line 1848
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1849
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 1850
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-void

    .line 1853
    :cond_0
    const-string v0, "PlayActivity"

    const-string v2, "\u624b\u52bf\uff1a\u65e0\uff01"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 1855
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-void
.end method

.method public setFab(Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;)V
    .locals 4

    .line 1611
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    iget v1, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 1612
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    iget v1, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    iget-object v2, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->ivRoundMove:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 1613
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    iget v1, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    iget v2, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->dealWidhDirRudder(IIZ)V

    .line 1614
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mRudder:Lcom/tzh/wifi/wificam/view/rudder/Rudder;

    invoke-virtual {v0}, Lcom/tzh/wifi/wificam/view/rudder/Rudder;->getEndPathPoint()Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;

    move-result-object v0

    .line 1615
    iget v1, v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    iget v2, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointX:I

    if-ne v1, v2, :cond_0

    iget v0, v0, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    iget p1, p1, Lcom/tzh/wifi/wificam/view/pathdraw/PathPoint;->pointY:I

    if-ne v0, p1, :cond_0

    .line 1616
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->pathResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public setHandFist()V
    .locals 3

    .line 1813
    const-string v0, "PlayActivity"

    const-string v1, "\u624b\u52bf\uff1a\u62f3\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1815
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordEnd:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1817
    :cond_0
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strRecordStart:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1819
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v2, 0x7

    .line 1820
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1821
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1822
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setHandPalm()V
    .locals 3

    .line 1830
    iget-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->bVideoRecord:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1831
    iput-boolean v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    .line 1832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->nStartFrameTime:J

    return-void

    .line 1835
    :cond_0
    const-string v0, "PlayActivity"

    const-string v2, "\u624b\u52bf\uff1a\u638c\uff01"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    invoke-static {p0}, Lcom/tzh/wifi/wificam/utils/StringUtils;->getInstance(Landroid/content/Context;)Lcom/tzh/wifi/wificam/utils/StringUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/tzh/wifi/wificam/utils/StringUtils;->strSnap:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1837
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x7

    .line 1838
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    .line 1839
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 1840
    iget-object v1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setWaitFalse()V
    .locals 1

    const/4 v0, 0x0

    .line 1859
    iput-boolean v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->isWait:Z

    return-void
.end method

.method public showIAD()V
    .locals 2

    .line 1893
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1894
    const-string v0, "\u8bf7\u5148\u52a0\u8f7d\u5e7f\u544a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 1897
    :cond_0
    invoke-virtual {v0}, Lcom/unad/sdk/UNADInterstitial;->isAdValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1898
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->interstitial:Lcom/unad/sdk/UNADInterstitial;

    invoke-virtual {v0}, Lcom/unad/sdk/UNADInterstitial;->show()V

    return-void

    .line 1900
    :cond_1
    const-string v0, "\u5e7f\u544a\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u52a0\u8f7d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showReIAD()V
    .locals 2

    .line 2020
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2021
    const-string v0, "\u8bf7\u5148\u52a0\u8f7d\u5e7f\u544a"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 2024
    :cond_0
    invoke-virtual {v0}, Lcom/unad/sdk/UNADRewarded;->isAdValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2025
    iget-object v0, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->rewarded:Lcom/unad/sdk/UNADRewarded;

    invoke-virtual {v0, p0}, Lcom/unad/sdk/UNADRewarded;->show(Landroid/app/Activity;)V

    return-void

    .line 2027
    :cond_1
    const-string v0, "\u5e7f\u544a\u5931\u6548\uff0c\u8bf7\u91cd\u65b0\u52a0\u8f7d"

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public snapState(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1315
    :cond_0
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnRecord:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    return-void

    .line 1311
    :cond_1
    iget-object p1, p0, Lcom/tzh/wifi/wificam/activity/PlayActivity;->btnPhotoSnap:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->performClick()Z

    return-void
.end method

.method public writeConfig()V
    .locals 0

    return-void
.end method
